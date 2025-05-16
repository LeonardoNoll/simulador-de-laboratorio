// Inherit the parent event
event_inherited();

if(closed) {
	if(content == "") sprite_index = s_test_tube_empty_closed
	else if(content == "HCl") sprite_index = s_test_tube_HCl_closed
	else if(content == "HCl + Saliva estimulada" && ph != 1) sprite_index = s_test_tube_mixed_closed
	else sprite_index = s_test_tube_water_closed
} else {
	if(content == "") sprite_index = s_test_tube
	else if(content == "HCl") sprite_index = s_test_tube_HCl
	else if(content == "HCl + Saliva estimulada" && ph != 1) sprite_index = s_test_tube_mixed
	else sprite_index = s_test_tube_water
}