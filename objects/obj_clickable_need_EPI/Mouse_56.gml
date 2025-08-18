if(drag_mode) {
	if(on_release != undefined) on_release()
	
	global.selected = noone
	drag_mode = false;
	window_set_cursor(cr_arrow)

	y = base_y
	x = base_x
}	