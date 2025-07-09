event_inherited();

if(chronometer == noone) {
	chronometer = instance_create_layer(130, 80, "GUI", obj_cronometer)
	chronometer.on_count_start = on_count_start
	chronometer.on_count_sucess = on_count_sucess
	chronometer.on_count_fail = on_count_fail
	chronometer.expected_minutes = expected_minutes
} else {
	instance_destroy(chronometer)
	chronometer = noone
}


