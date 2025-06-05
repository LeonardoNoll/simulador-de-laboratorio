// Inherit the parent event
event_inherited();

name = "HCl"
content = name
ph = 1
needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
becker = noone
scale_on_contact_list = [obj_25ml_becker]

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
		becker = instance_nearest(x,y, obj_25ml_becker)
		if(becker.name == "Bécker 25ml") {
			criar_textbox(becker.x,becker.y, ["Você ainda não marcou este recipiente"])
			return
		}
			get_input(x, y, "Mls a despejar", function(_text) {
				if string_digits(_text) == 15 {
					pass_liquid_to_becker(_text, self, s_marked_becker_with_HCl)
				}
				else 
					criar_textbox(x,y,["Esta não é a quantia correta de mls. Tente novamente."])				
			})
	}
}
