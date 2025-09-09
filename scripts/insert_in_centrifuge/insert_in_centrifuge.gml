function insert_in_centrifuge(){
	var _is_meeting_centrifuge = place_meeting(x, y, obj_centrifuge)
	var _centrifuge = instance_nearest(x, y, obj_centrifuge)
	var _is_centrifuge_open = _centrifuge.sprite_index == s_centrifuge_open
	
	if(_is_meeting_centrifuge && _is_centrifuge_open) {
		is_in_centrifuge = true
		sprite_index = noone
		on_release = undefined
		array_push(_centrifuge.options, OPTIONS.REMOVER_ITENS)
	}
}