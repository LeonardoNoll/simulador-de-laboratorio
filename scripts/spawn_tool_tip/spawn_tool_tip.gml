function spawn_tool_tip(name){
	if(instance_exists(obj_tool_tip)) {
		instance_destroy(obj_tool_tip)
	}
	var _tp = instance_create_depth(mouse_x + 20, mouse_y, 1, obj_tool_tip)
	_tp.name = name
	return _tp	
}