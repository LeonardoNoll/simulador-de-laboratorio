// Inherit the parent event
event_inherited();

name = "Vidro de HCl"
ph = 1
needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
		with(instance_nearest(x,y,obj_25ml_becker)){
			get_input(x, y, "Mls a despejar", function(_text) {
				if string_digits(_text) == 15 {
					pass_liquid_to_becker(_text, 1, s_marked_becker_with_HCl)
					instance_destroy(obj_acid_bottle)
				}
				else 
					criar_textbox(x,y,["Esta não é a quantia correta de mls. Tente novamente."])				
			})
		}
		
	}
}