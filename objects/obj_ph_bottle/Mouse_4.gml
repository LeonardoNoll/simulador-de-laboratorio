if(!instance_exists(obj_ph_strip)) {
	var _ph_strip = instance_create_layer(x	, y, "Instances", obj_ph_strip)
	_ph_strip.base_x = x-50
	_ph_strip.base_y = y+5
	with(_ph_strip) {		
		event_perform(ev_mouse, ev_left_press)
	}
}