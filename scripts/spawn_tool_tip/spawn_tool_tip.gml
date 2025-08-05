function spawn_tool_tip(name){
	if(mouse_check_button(mb_any)) return
	
	var _ui_objects = [
		obj_context_menu,
		obj_text_box,
		obj_inventory_GUI,
		obj_locker_GUI,
		obj_reference_table,
		obj_btn_home_dialog,
	]
	
	for(var i = 0; i < array_length(_ui_objects); i++) {
		if(instance_exists(_ui_objects[i])) return
	}
	
	if(instance_exists(obj_tool_tip)) {
		instance_destroy(obj_tool_tip)
	}
	
	var _tp = instance_create_depth(mouse_x + 20, mouse_y, 0, obj_tool_tip)
	_tp.name = name
	return _tp
} 