if(drag_mode) {
	window_set_cursor(cr_default)
	if(on_release != undefined) on_release()
	if(!instance_exists(obj_context_menu)) global.selected = noone
	drag_mode = false;
	y = base_y
	x = base_x
}	
