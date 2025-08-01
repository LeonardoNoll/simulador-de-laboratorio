function pass_saliva_to_falcon(){
	var _is_touching_falcon_tube = place_meeting(x, y, obj_falcon_tube)
	
	show_debug_message(_is_touching_falcon_tube)
	if(!_is_touching_falcon_tube) {
		return	
	}
	
	sprite_index = s_sirynge_empty
	on_release = undefined
	
	with(obj_falcon_tube) {
		sprite_index = s_falcon_tube_filled
		on_release = insert_in_centrifuge
	}
}