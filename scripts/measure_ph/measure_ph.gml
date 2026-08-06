function measure_ph(){
	with global.selected{
		if power_on{ 
			if verificar_4 and verificar_7{
				if becker.agitando == true{
				sprite_index = s_phmetro_medindo
				display_text = becker.PH[max(0,(becker.indice_ph/5))]
				options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.MEDIR_PH, OPTIONS.PARAR_DE_MEDIR]
				}else{
					create_textbox(x,y,"a bebida deve estar em agitação constante")
				}
			}else{
				create_textbox(x,y,"O peagâmetro deve passar pela calibração antes de medir o ph")
				}
		}else{
			create_textbox(x,y,"O dispositivo deve estar ligado")
			}
	}
}