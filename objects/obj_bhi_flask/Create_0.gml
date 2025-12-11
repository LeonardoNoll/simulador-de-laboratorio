event_inherited();

name = "Frasco de caldo BHI"
needed_EPI = [obj_lab_coat]
content = name

scale_on_contact_list = [obj_glass_jar_with_lid]
becker = noone

on_release = function() {
	
	becker = instance_nearest(x, y, obj_glass_jar_with_lid)
	
	if (!becker.on_scale) {
		create_textbox(mouse_x-200, mouse_y-100, ["O frasco precisa estar na balança"])
		return
	}

	if(place_meeting(x, y, obj_glass_jar_with_lid)) {
		if(is_becker_ready(becker)) {
			spawn_context_menu([OPTIONS.PASSAR_PARA_O_FRASCO])
		}
	}
}





