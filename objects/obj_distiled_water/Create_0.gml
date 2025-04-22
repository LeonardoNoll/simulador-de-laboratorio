// Inherit the parent event
event_inherited();

name = "Água destilada"
content = name
ph = 7
becker = noone

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
			becker = instance_nearest(x, y, obj_25ml_becker)
			get_input(x, y, "Mls a passar", function(_text) {
				if string_digits(_text) == 15 {
					pass_liquid_to_becker(_text, self, s_marked_becker_with_water)
				}
				else 
					criar_textbox(x,y,["Esta não é a quantia correta de mls. Tente novamente."])	
			})
	}
}
