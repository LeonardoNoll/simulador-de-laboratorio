/// @description Insert description here
// You can write your code in this editor
if(!locked) {
	drag_mode = false;
	global.selected = noone

	if(!place_meeting(x,y,obj_patient)) {
		y = base_y
		x = base_x
	}
}


