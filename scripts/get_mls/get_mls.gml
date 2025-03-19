function get_mls(){
	if(place_meeting(x,y,[obj_acid_bottle, obj_stimulated_saliva, obj_distiled_water])) {
		//TODO: make it show name of what liquid is inside
		get_input("mls a coletar", function(_text) {
			//var _other = instance_place(x, y, [obj_acid_bottle, obj_stimulated_saliva, obj_distiled_water])
			ml = string_digits(_text)
			name = "Pipeta com " + ml + "ml(s)"
			on_release = function() {
				if(place_meeting(x,y,obj_25ml_becker)) {
					pass_liquid_to_becker(ml, random_range(0,14), ml == 2 ? s_marked_becker_with_HCl : s_marked_becker_with_water)
				}
			}
		})
	}
}