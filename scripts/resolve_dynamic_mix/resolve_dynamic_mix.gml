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

		// Sem saliva não há hidrólise em andamento: cor estática de starch_control (reage com iodo).
		if (!_has_saliva) {
			return "starch_control";
		}

		// Com saliva, o amido vai sendo hidrolisado ao longo do tempo (0 a 8 min) e reage cada
		// vez menos com o iodo. Interpola a cor entre starch_control (escuro) e iodine_control
		// (claro) para que cada alíquota tirada a cada 2 min mostre uma cor diferente. O id
		// (starch_control/iodine_control) continua binário no corte de 8 min só para fins de
		// interpretação/correção; a cor é que reflete o gradiente.
		var _t = clamp(_mins / 8, 0, 1);
		var _color = merge_colour(
			global.liquids_experiment_4.starch_control.color,
			global.liquids_experiment_4.iodine_control.color,
			_t
		);
		var _result_id = (_t >= 1) ? "iodine_control" : "starch_control";

		// Carrega o estado da alíquota para o resultado. from_erlenmeyer distingue um tubo que
		// recebeu alíquota de um que só tem água + iodo -- ambos terminam como iodine_control.
		var _result_state = {
			minutes_passed: _mins,
			saliva_added: _has_saliva,
			from_erlenmeyer: true
		};

		return { result: _result_id, color: _color, state: _result_state };
	}

	return undefined;
}
