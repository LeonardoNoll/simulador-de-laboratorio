// Inherit the parent event
event_inherited();

var _liquid_id = is_undefined(content) ? "" : content.id;
var _liquid_ph = (is_undefined(content) || !variable_struct_exists(content, "state")) ? undefined : content.state.ph;

if(closed) {
	if(_liquid_id == "") sprite_index = s_test_tube_empty_closed
	else if(_liquid_id == "hcl") sprite_index = s_test_tube_HCl_closed
	else if(_liquid_id == "hcl_saliva_mix" && _liquid_ph != 1) sprite_index = s_test_tube_mixed_ph_change_closed
	else if(_liquid_id == "hcl_agua_mix" && _liquid_ph == 2) sprite_index = s_test_tube_mixed_no_change_closed
	else sprite_index = s_test_tube_water_closed
} else {
	if(_liquid_id == "") sprite_index = s_test_tube
	else if(_liquid_id == "hcl") sprite_index = s_test_tube_HCl
	else if(_liquid_id == "hcl_saliva_mix" && _liquid_ph != 1) sprite_index = s_test_tube_mixed_ph_change
	else if(_liquid_id == "hcl_agua_mix" && _liquid_ph == 2) sprite_index = s_test_tube_mixed_no_change
	else sprite_index = s_test_tube_water
}
