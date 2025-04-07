// Inherit the parent event
event_inherited();

if(closed) {
	if(ph == 0) sprite_index = s_test_tube_empty_closed
	else if(ph == 2) sprite_index = s_test_tube_HCl_closed
	else sprite_index = s_test_tube_water_closed
} else {
	if(ph == 0) sprite_index = s_test_tube
	else if(ph == 2) sprite_index = s_test_tube_HCl
	else sprite_index = s_test_tube_water
}