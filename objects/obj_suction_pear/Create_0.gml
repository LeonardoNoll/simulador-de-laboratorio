// Inherit the parent event
event_inherited();

name = "Pera de sucção"
needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
scale_on_contact_list = [obj_pipette_10ml]
on_release = function() {
	with(instance_nearest(x,y, obj_pipette_10ml)) {
		on_release()
	}
}
