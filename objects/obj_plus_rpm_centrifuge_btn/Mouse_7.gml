if(obj_centrifuge.counting_down) {
	return
}

if(obj_centrifuge.rpm < 10000) {
	obj_centrifuge.rpm += 100
}

obj_centrifuge_visor.display_mode = DISPLAY_MODES.RPM