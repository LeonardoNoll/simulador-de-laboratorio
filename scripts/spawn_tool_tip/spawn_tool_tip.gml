function spawn_tool_tip(name){
	if(!(instance_exists(obj_tool_tip) && instance_exists(obj_menu))) {
		var _tp = instance_create_layer(mouse_x + 10, mouse_y, "GUI", obj_tool_tip)
		_tp.name = name
	}
}