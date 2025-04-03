function get_mls(){
	var _other = instance_place(x, y, [obj_acid_bottle, obj_stimulated_saliva, obj_distiled_water, obj_25ml_becker])
	if(_other != noone) {
		//TODO: make it show name of what liquid is inside
		ph = _other.ph
		get_input(x,y,"Mls a coletar", function(_text) {	
			sprite_index = object_index == obj_pipett_10ml ? s_pipette_10ml_with_pear_filled : s_pipette_5ml_with_pear_filled
			ml = string_digits(_text)
			name = "Pipeta com " + ml + "ml(s)"
			on_release = function() {
				if(place_meeting(x,y,obj_25ml_becker)) {
					pass_liquid_to_becker(ml, ph, ml == 2 ? s_marked_becker_with_HCl : s_marked_becker_with_water)
				}
				if(place_meeting(x,y, obj_test_tube)) {
					pass_liquid_to_test_tube(ml, ph, ml == 2 ? s_marked_becker_with_HCl : s_marked_becker_with_water)
				}
			}
		})
	}
}