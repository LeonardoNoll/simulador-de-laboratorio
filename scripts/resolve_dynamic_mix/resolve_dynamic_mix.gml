/// @function resolve_dynamic_mix(_incoming, _current)
/// @description Resolve misturas que dependem de estado (LiquidInstance).
/// @param _incoming (struct): LiquidInstance ou LiquidDef de entrada
/// @param _current (struct): LiquidInstance ou LiquidDef atual

function resolve_dynamic_mix(_incoming, _current) {
	var _inc_id = variable_struct_exists(_incoming, "id") ? _incoming.id : (is_string(_incoming) ? _incoming : undefined);
	var _cur_id = variable_struct_exists(_current, "id") ? _current.id : (is_string(_current) ? _current : undefined);
	
	if (is_undefined(_inc_id) || is_undefined(_cur_id)) return undefined;

	// Experimento 4: Starch + Iodine Control dependente de tempo e saliva
	// O Erlenmeyer contém starch (amido) que pode ter minutos_passed e saliva_added.
	// O tubo contém iodine_control (iodo diluído em água).
	if ((_inc_id == "starch" && _cur_id == "iodine_control") || 
		(_inc_id == "iodine_control" && _cur_id == "starch")) {
		
		var _starch = (_inc_id == "starch") ? _incoming : _current;
		
		// Se _starch não for uma LiquidInstance, não temos estado para consultar
		if (!is_struct(_starch) || !variable_struct_exists(_starch, "state")) return undefined;
		
		var _state = _starch.state;
		var _mins = struct_get(_state, "minutes_passed") ?? 0;
		var _has_saliva = struct_get(_state, "saliva_added") ?? false;
		
		// Se tem saliva e passou tempo suficiente (ex: 8 min), o amido foi hidrolisado.
		// Quando hidrolisado, ele não reage com o iodo (mantém a cor do iodo = iodine_control).
		// Se NÃO hidrolisado, reage e fica azul/preto (starch_control).
		if (_has_saliva && _mins >= 8) {
			return "iodine_control";
		}
		
		return "starch_control";
	}

	return undefined;
}
