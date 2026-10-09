function pass_saliva_to_falcon(){
	var _is_touching_falcon_tube = place_meeting(x, y, obj_falcon_tube)

	if(!_is_touching_falcon_tube) {
		return
	}

	var _falcon_tube = instance_nearest(x, y, obj_falcon_tube)

	if(_falcon_tube.closed) {
		create_textbox(x, y, ["Este tubo falcon está fechado"])
		return
	}

	sprite_index = s_sirynge_empty
	on_release = undefined

	with(_falcon_tube) {
		// O sprite é resolvido no Step a partir de closed/filled
		filled = true
		on_release = insert_in_centrifuge
	}
}