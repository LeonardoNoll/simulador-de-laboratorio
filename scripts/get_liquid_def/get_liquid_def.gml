function get_liquid_def(_liquids_struct, _liquid_id){
	if(is_undefined(_liquids_struct) || is_undefined(_liquid_id)) return undefined
	
	return struct_get(_liquids_struct, _liquid_id)
}

/// @function LiquidDef(_id, _color, _name, _mix_results)
/// @description Constructor for liquid definitions.
/// @param _id (string): Unique identifier for the liquid
/// @param _color (color): Hex or GML color
/// @param _name (string): Display name
/// @param _mix_results (struct): Optional struct for mixing logic
function LiquidDef(_id, _color, _name, _mix_results = {}) constructor {
	id = _id;
	color = _color;
	name = _name;
	mix_results = _mix_results;
}