/// @function transfer_liquid_to_test_tube(_liquid_id, _test_tube, _liquids, _test_tubes, _test_tube_id, _ml)
/// @description Transfere um liquido para um tubo de teste usando regras dirigidas por dados.
/// @param _liquid_id (string): Id do liquido de origem
/// @param _test_tube (struct): Instancia do tubo de teste
/// @param _liquids (struct): Struct de liquidos do experimento
/// @param _test_tubes (struct): Struct de tubos de teste do experimento
/// @param _test_tube_id (string): Id esperado do tubo de teste
/// @param _ml (real): Quantidade em ml transferida (opcional)

function transfer_liquid_to_test_tube(_liquid_id, _test_tube, _liquids, _test_tubes, _test_tube_id, _ml) {
    if (is_undefined(_test_tube)) return transfer_liquid_result_fail("test_tube_missing");
    if (is_undefined(_liquids) || !variable_struct_exists(_liquids, _liquid_id)) return transfer_liquid_result_fail("liquid_not_found");
    if (is_undefined(_test_tubes)) return transfer_liquid_result_fail("test_tube_definition_not_found");
	
	var _test_tube_def;

    if (is_undefined(_test_tube_id) || _test_tube_id == "") {
        var _found = find_test_tube_def_by_name(_test_tubes, _test_tube.name);
        _test_tube_id = _found.id;
        if (_test_tube_id == "" || is_undefined(_found.def)) return transfer_liquid_result_fail("test_tube_definition_not_found");
        _test_tube_def = _found.def;
    } else {
        if (!variable_struct_exists(_test_tubes, _test_tube_id)) return transfer_liquid_result_fail("test_tube_definition_not_found");
        _test_tube_def = _test_tubes[_test_tube_id];
    }
    if (!is_marked_correctly(_test_tube, _test_tube_def, _ml)) return transfer_liquid_result_fail("test_tube_label_mismatch");

    if (!variable_struct_exists(_test_tube_def, "liquids")
        || !variable_struct_exists(_test_tube_def.liquids, _liquid_id)) return transfer_liquid_result_fail("liquid_not_allowed");

    var _incoming_liquid = _liquids[_liquid_id];
    var _current_id = get_test_tube_current_liquid_id(_test_tube);

    // Se o tubo estiver vazio, aceita o liquido sem misturar.
    if (_current_id == "" || is_undefined(_current_id)) return transfer_liquid_result_ok(_incoming_liquid, undefined);

    if (!variable_struct_exists(_liquids, _current_id)) return transfer_liquid_result_fail("current_liquid_not_found");

    var _current_liquid = _liquids[_current_id];
    if (!can_mix(_incoming_liquid, _current_liquid)) return transfer_liquid_result_fail("incompatible_liquids");

    var _mix_raw = undefined;
    if (variable_struct_exists(_incoming_liquid, "mix_results")
        && variable_struct_exists(_incoming_liquid.mix_results, _current_id)) {
        _mix_raw = _incoming_liquid.mix_results[_current_id];
    } else if (variable_struct_exists(_current_liquid, "mix_results")
        && variable_struct_exists(_current_liquid.mix_results, _incoming_liquid.id)) {
        _mix_raw = _current_liquid.mix_results[_incoming_liquid.id];
    }

    var _mix_info = parse_mix_result(_mix_raw);
    if (_mix_info.id == "" || is_undefined(_mix_info.id)) return transfer_liquid_result_fail("invalid_mix_result");

    if (!is_undefined(_mix_info.required_ml)) {
        if (is_undefined(_ml)) return transfer_liquid_result_fail("ml_required");
        if (_ml < _mix_info.required_ml) return transfer_liquid_result_fail("insufficient_ml");
    }

    if (!variable_struct_exists(_liquids, _mix_info.id)) return transfer_liquid_result_fail("result_liquid_not_found");

    return transfer_liquid_result_ok(_liquids[_mix_info.id], _mix_info.required_ml);
}
// TODO: RESOLVER _TES_TUBE_DEF NÃO DEFINIDO
