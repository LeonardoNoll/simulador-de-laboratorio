function measure_ph(){
	with global.selected{
		if power_on{ 
			if verificar_4 and verificar_7{
				sprite_index = s_phmetro_medindo
			}else{
				create_textbox(x,y,"O peagâmetro deve passar pela calibração antes de medir o ph")
				}
		}else{
			create_textbox(x,y,"O dispositivo deve estar ligado")
			}
	}
}