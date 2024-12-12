function spawn_tool_tip(name){
	//if(!(instance_exists(obj_tool_tip) && instance_exists(obj_menu))) {
	//	var _tp = instance_create_depth(mouse_x + 10, mouse_y, -1, obj_tool_tip)
	//	_tp.name = name
	//}
	if(instance_exists(obj_tool_tip)) {
		instance_destroy(obj_tool_tip)
	}
	if(!instance_exists(obj_menu)) {
		var _tp = instance_create_depth(mouse_x + 10, mouse_y, 99, obj_tool_tip)
		_tp.name = name
	}
}