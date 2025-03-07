// Inherit the parent event
event_inherited();

name = "Saliva estimulada"

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
		with(instance_nearest(x,y,obj_25ml_becker)){
			sprite_index = s_bottle_marked_filled
			use_text_input(self)
		}
		instance_destroy()
	}
}