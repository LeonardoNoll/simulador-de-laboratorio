function stop_measure(){
	with global.selected{
		if sprite_index == s_phmetro_medindo{
			sprite_index = s_phmetro
			display_text = ""
		}
	}
}