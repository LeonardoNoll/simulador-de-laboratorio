function identify_recipient(){
	with(global.selected) {
		get_input(x,y,"Marque o recipiente", function(_text) {
			name = _text
		})
	}
}