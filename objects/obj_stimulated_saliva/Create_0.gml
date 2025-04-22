// Inherit the parent event
event_inherited();

name = "Saliva estimulada"
content = name
ph = 7
becker = noone

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
		becker = instance_nearest(x, y, obj_25ml_becker)
		pass_liquid_to_becker(15, self, s_marked_becker_with_water)
	}
}