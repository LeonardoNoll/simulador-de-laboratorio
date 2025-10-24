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
		if(is_becker_ready(becker)) {
			spawn_context_menu([OPTIONS.PASSAR_LIQUIDO_AO_BEQUER])
		}
	}
}

