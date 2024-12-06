/// @description Insert description here
// You can write your code in this 
if(!instance_exists(obj_tool_tip)) {
	var _tp = instance_create_layer(mouse_x + 10, mouse_y, "GUI", obj_tool_tip)
	_tp.name = name
}