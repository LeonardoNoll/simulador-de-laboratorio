function spawn_tool_tip(name){
	if !(instance_exists(obj_menu) || instance_exists(obj_text_box) || instance_exists(obj_inventory_GUI)
	|| instance_exists(obj_locker) || instance_exists(obj_reference_table) || instance_exists(obj_instructions)
	|| instance_exists(obj_btn_home_dialog)) {	
		if(instance_exists(obj_tool_tip)) {
			instance_destroy(obj_tool_tip)
		}
		var _tp = instance_create_depth(mouse_x + 20, mouse_y, 1, obj_tool_tip)
		_tp.name = name
		return _tp
	}
} 