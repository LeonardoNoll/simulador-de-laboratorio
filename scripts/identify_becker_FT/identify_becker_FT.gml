function identify_becker_FT(){
	with(global.selected) {
		get_input(x,y,"Marque o recipiente", function(_text) {
		
			if(object_index == obj_glass_jar_experiment_FT) {
				if array_contains(names, _text) {
					sprite_index = s_bottle_marked_empty
					name = _text
					identificado = true
					array_delete(names, array_get_index(names, _text), 1)
				}
				else {
					create_textbox(x,y, "o nome está errado")
				}
			}
			scale_pulse(self, 2, 0.15)

		})	
	}
}