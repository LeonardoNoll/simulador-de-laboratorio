if(!locked) {
	drag_mode = false;
	global.selected = noone

	if(!place_meeting(x,y,obj_catalyst)) {
		y = base_y
		x = base_x
	}
}