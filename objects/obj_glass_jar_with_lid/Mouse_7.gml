/*if (position_meeting(mouse_x, mouse_y, id)) {
    x = mouse_x;
    y = mouse_y;
}*/ 
if(!locked) {
	drag_mode = false;
	global.selected = noone

	if(!place_meeting(x,y,obj_patient)) {
		y = base_y
		x = base_x
	}
}

