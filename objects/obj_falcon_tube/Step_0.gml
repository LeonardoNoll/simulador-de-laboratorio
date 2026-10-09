// Inherit the parent event
event_inherited();

// Dentro da centrífuga o tubo fica invisível (ver insert_in_centrifuge)
if(!is_in_centrifuge) {
	if(closed) {
		sprite_index = filled ? s_falcon_tube_filled : s_falcon_tube_empty
	} else {
		sprite_index = filled ? s_falcon_tube_open_filled : s_falcon_tube_open_empty
	}
}
