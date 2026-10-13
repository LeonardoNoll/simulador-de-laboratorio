/// @function transfer_liquid_to_test_tube(_liquid_id, _test_tube, _liquids, _test_tubes, _test_tube_id, _ml)
/// @description Transfere um liquido para um tubo de teste usando regras dirigidas por dados.
/// @param _liquid_id (string): Id do liquido de origem
/// @param _test_tube (struct): Instancia do tubo de teste
/// @param _liquids (struct): Struct de liquidos do experimento
/// @param _test_tubes (struct): Struct de tubos de teste do experimento
/// @param _test_tube_id (string): Id esperado do tubo de teste
/// @param _ml (real): Quantidade em ml transferida (opcional)

function transfer_liquid_to_test_tube(_incoming, _test_tube, _liquids, _test_tubes, _test_tube_id, _ml) {
    if (is_undefined(_test_tube)) return transfer_liquid_result_fail("test_tube_missing");
    if (is_undefined(_liquids)) return transfer_liquid_result_fail("liquids_missing");
    if (is_undefined(_test_tubes)) return transfer_liquid_result_fail("test_tube_definition_not_found");

	// Resolve o liquido de entrada para uma LiquidInstance
	var _incoming_instance = undefined;
	if (is_string(_incoming)) {
		var _def = _liquids[$ _incoming];
		if (is_undefined(_def)) return transfer_liquid_result_fail("liquid_not_found");
		_incoming_instance = new LiquidInstance(_def);
	} else if (is_struct(_incoming)) {
		// Se for uma LiquidInstance de verdade usa clone(); se for uma LiquidDef crua, envolve numa instância nova
		_incoming_instance = variable_struct_exists(_incoming, "clone") ? _incoming.clone() : new LiquidInstance(_incoming);
	}
	
	if (is_undefined(_incoming_instance)) return transfer_liquid_result_fail("invalid_incoming_liquid");
	
	var _test_tube_def;

    if (is_undefined(_test_tube_id) || _test_tube_id == "") {
        var _found = find_test_tube_def_by_name(_test_tubes, _test_tube.name);
        _test_tube_id = _found.id;
        if (_test_tube_id == "" || is_undefined(_found.def)) return transfer_liquid_result_fail("test_tube_definition_not_found");
        _test_tube_def = _found.def;
    } else {
        if (!variable_struct_exists(_test_tubes, _test_tube_id)) return transfer_liquid_result_fail("test_tube_definition_not_found");
        _test_tube_def = _test_tubes[$ _test_tube_id];
    }
	
	var _liquid_def = _incoming_instance.def;

	// Resolve o liquido atual do tubo para uma LiquidInstance
	var _current_content = _test_tube.content;
	var _current_instance = undefined;
	if (is_string(_current_content) && _current_content != "") {
		var _def = _liquids[$ _current_content];
		if (!is_undefined(_def)) _current_instance = new LiquidInstance(_def);
	} else if (is_struct(_current_content)) {
		_current_instance = _current_content;
	}

	if(!can_transfer_liquid_to_test_tube(_test_tube_def, _liquid_def, _ml)) return transfer_liquid_result_fail("liquid_test_tube_mismatch")

	// Se o tubo estiver vazio, aceita o liquido sem misturar.
    if(is_undefined(_current_instance)) {
		// Garante que o resultado seja uma instância independente, não o mesmo objeto da origem
		var _new_instance = _incoming_instance.clone();
		return transfer_liquid_result_ok(_new_instance, undefined);
	}
    
    if(!can_mix(_incoming_instance, _current_instance)) return transfer_liquid_result_fail("incompatible_liquids");
	
	var _mix_raw = get_mix_result(_incoming_instance, _current_instance);
	
    var _mix_info = parse_mix_result(_mix_raw);
    if (_mix_info.id == "" || is_undefined(_mix_info.id)) return transfer_liquid_result_fail("invalid_mix_result");
	if (!variable_struct_exists(_liquids, _mix_info.id)) return transfer_liquid_result_fail("result_liquid_not_found");

	if (!is_undefined(_mix_info.required_ml)) {
		if (is_undefined(_ml)) return transfer_liquid_result_fail("ml_required");
		if (_ml < _mix_info.required_ml) return transfer_liquid_result_fail("insufficient_ml");
	}

	var _result_def = _liquids[$ _mix_info.id];
	if (is_undefined(_result_def)) return transfer_liquid_result_fail("result_liquid_not_found");
	
	// Retorna uma nova LiquidInstance para o resultado
	var _result_instance = new LiquidInstance(_result_def);

	// Mistura dinâmica pode calcular uma cor específica (ex. gradiente por tempo de reação),
	// diferente da cor estática do LiquidDef
	if (!is_undefined(_mix_info.color)) {
		_result_instance.color = _mix_info.color;
	}

	// Mistura dinâmica também pode carregar estado (ex. tempo de reação da alíquota).
	// Mescla em vez de substituir para não perder o que o construtor já semeou (ex. ph).
	if (is_struct(_mix_info.state)) {
		var _state_keys = variable_struct_get_names(_mix_info.state);
		for (var _i = 0; _i < array_length(_state_keys); _i++) {
			_result_instance.state[$ _state_keys[_i]] = _mix_info.state[$ _state_keys[_i]];
		}
	}

	return transfer_liquid_result_ok(_result_instance, _mix_info.required_ml);
}