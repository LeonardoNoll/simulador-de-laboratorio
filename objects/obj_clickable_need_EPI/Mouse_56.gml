if(drag_mode) {
	if(on_release != undefined) on_release()
	
	global.selected = noone
	drag_mode = false;

	y = base_y
	x = base_x
}