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
	
	var _liquid_def = get_liquid_def(_liquid_id, _liquids)
	
	if(!can_transfer_liquid_to_test_tube(_test_tube_def,_liquid_def, _ml)) return transfer_liquid_result_fail("liquid_test_tube_mismatch")
	
	return parse_mix_result()
}