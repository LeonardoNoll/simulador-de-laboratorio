/// @function LiquidDef(_id, _color, _name, _mix_results, _ph)
/// @description Constructor for liquid definitions.
/// @param _id (string): Unique identifier for the liquid
/// @param _color (color): Hex or GML color
/// @param _name (string): Display name
/// @param _mix_results (struct): Optional struct for mixing logic
/// @param _ph (real): Optional baseline pH for this liquid
function LiquidDef(_id, _color, _name, _mix_results = {}, _ph = undefined) constructor {
	id = _id;
	color = _color;
	name = _name;
	mix_results = _mix_results;
	ph = _ph;
}