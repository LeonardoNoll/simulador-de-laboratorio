if(!instance_exists(obj_ph_strip)) {
	var _ph_strip = instance_create_layer(x-50, y+5, "Instances", obj_ph_strip)
	with(_ph_strip) {
		event_perform(ev_mouse, ev_left_press)
	}
}