// Inherit the parent event
event_inherited();

name = "Saliva estimulada"
needed_EPI = [obj_glove, obj_lab_coat, obj_goggles] 
content = name
ph = 7
becker = noone

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
		becker = instance_nearest(x, y, obj_25ml_becker)
		if(becker.name == "Bécker 25ml") {
			criar_textbox(becker.x,becker.y, ["Você ainda não marcou este recipiente"])
			return
		}
		pass_liquid_to_becker(15, self, s_marked_becker_with_water)
		sprite_index = s_sirynge_empty
	}
}