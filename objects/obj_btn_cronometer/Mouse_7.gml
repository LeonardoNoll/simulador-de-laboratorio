event_inherited();
if(instance_exists(obj_cronometer)) {
	instance_destroy(obj_cronometer)
} else {
	var _cronometer_x = room_width - 190
	var _cronometer_y = 100
	var _cronometer = instance_create_layer(_cronometer_x, _cronometer_y, "GUI", obj_cronometer)
	_cronometer.on_count_start = on_count_start
	_cronometer.on_count_sucess = on_count_sucess
	_cronometer.on_count_fail = on_count_fail
	_cronometer.expected_minutes = expected_minutes
}


