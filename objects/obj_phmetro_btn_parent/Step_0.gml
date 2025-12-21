if (drag_mode) {
	window_set_cursor(cr_none)
	x = mouse_x + xx;
	y = mouse_y + yy;
} 

if(array_length(scale_on_contact_list) > 0) {
		for(var i = 0; i < array_length(scale_on_contact_list); i++) {
			if(place_meeting(x,y,scale_on_contact_list[i]))
				scale_on_contact(instance_nearest(x,y,scale_on_contact_list[i]))		
		}
}

if (scale_pulse_data != undefined) {
    scale_pulse_data.update();
}
