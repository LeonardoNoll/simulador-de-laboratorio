function get_liquid_def(_liquids_struct, _liquid_id){
	if(is_undefined(_liquids_struct) || is_undefined(_liquid_id)) return undefined
	
	return struct_get(_liquids_struct, _liquid_id)
}