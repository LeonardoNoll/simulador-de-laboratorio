function measure_ph(){
	with global.selected{
		if power_on{ 
			if verificar_4 and verificar_7{
				if becker.agitando == true{
				sprite_index = s_phmetro_medindo
				if becker.indice_ph == 150 {
					display_text = becker.PH[22]
				}else{
					if becker.indice_ph == 200 {
						display_text = becker.PH[24]
					}else{
						if becker.indice_ph == 225 {
							display_text = becker.PH[25]
						}else{
							if becker.indice_ph == 250 {
								display_text = becker.PH[26]
							}else{
								if becker.indice_ph == 270 {
									display_text = becker.PH[27]
								}else{
									if becker.indice_ph == 320 {
										display_text = becker.PH[28]
									}else{
										if becker.indice_ph == 370 {
											display_text = becker.PH[29]
										}else{
											if becker.indice_ph = 420 {
												display_text = becker.PH[30]
											}else{
												display_text = becker.PH[max(0,(becker.indice_ph/5))]
				}
					}
						}
							}
								}
									}
										}
											}
				options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.MEDIR_PH, OPTIONS.PARAR_DE_MEDIR]
				create_textbox(x,y - 140,string_concat("Saliva total adicionada: ", obj_glass_jar_experiment_6.indice_ph,"ml"))
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