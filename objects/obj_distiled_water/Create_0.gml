// Inherit the parent event
event_inherited();

name = "Água destilada"
ph = 7

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
		with(instance_nearest(x,y,obj_25ml_becker)){
			get_input(x, y, "Mls a passar", function(_text) {
				if string_digits(_text) == 15 {
					pass_liquid_to_becker(_text, 7, s_marked_becker_with_water)
					instance_destroy(obj_distiled_water)
				}
				else 
					criar_textbox(x,y,["Esta não é a quantia correta de mls. Tente novamente."])	
			})
		}
		
	}
}
