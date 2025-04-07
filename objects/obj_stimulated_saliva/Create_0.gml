// Inherit the parent event
event_inherited();

name = "Saliva estimulada"
ph = 7

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
		with(instance_nearest(x,y,obj_25ml_becker)){
			pass_liquid_to_becker(15, ph, s_marked_becker_with_water)
		}
		instance_destroy()
	}
}