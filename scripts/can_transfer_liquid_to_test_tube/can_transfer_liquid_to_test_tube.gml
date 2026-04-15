function can_transfer_liquid_to_test_tube(_test_tube_def,_liquid_def, _ml){
	if(!is_struct(_test_tube_def) || !is_struct(_liquid_def)) return false
	if (!variable_struct_exists(_test_tube_def, "liquids")) return false
	
	var _target_liquid = struct_get(_test_tube_def.liquids, _liquid_def.id)
	if(is_undefined(_target_liquid)) return false
	
	return _target_liquid == _ml
}
