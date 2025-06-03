function identify_recipient(){
	with(global.selected) {
		get_input(x,y,"Marque o recipiente", function(_text) {
			name = _text
			if(object_index == obj_25ml_becker) {
				sprite_index = s_bottle_marked_empty
			}
			scale_pulse(self, 2, 0.15)
			array_delete_value(options, OPTIONS.IDENFICIAR_RECIPIENTE)
		})	
	}
}