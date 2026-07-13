function measure_ph(){
	with global.selected{
		if power_on{ 
			if verificar_4 and verificar_7{
				sprite_index = s_phmetro_medindo
				display_text = becker.PH[becker.indice_ph]
				options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.MEDIR_PH, OPTIONS.PARAR_DE_MEDIR]
			}else{
				create_textbox(x,y,"O peagâmetro deve passar pela calibração antes de medir o ph")
				}
		}else{
			create_textbox(x,y,"O dispositivo deve estar ligado")
			}
	}
}