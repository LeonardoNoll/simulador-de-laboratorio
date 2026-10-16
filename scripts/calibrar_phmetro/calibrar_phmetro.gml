function calibrar_phmetro(){
	with global.selected{
		if power_on {
			if verificar_4 == false or verificar_7 == false{
				// A calibração é feita com a tampão encaixada no agitador (ao lado do peagâmetro).
				// place_meeting só com o peagâmetro é frágil: a sobreposição das máscaras é pequena.
				var _stirrer = obj_magnetic_stirrer_experiment_6
				var _tamp4 = instance_nearest(_stirrer.x, _stirrer.y, obj_solucaoTampao_4)
				var _tamp7 = instance_nearest(_stirrer.x, _stirrer.y, obj_solucaoTampao_7)
				var _calibrando_4 = instance_exists(_tamp4) && _tamp4.locked && point_distance(_tamp4.x, _tamp4.y, _stirrer.x, _stirrer.y) < 80
				var _calibrando_7 = instance_exists(_tamp7) && _tamp7.locked && point_distance(_tamp7.x, _tamp7.y, _stirrer.x, _stirrer.y) < 80

				if !_calibrando_4 && !_calibrando_7 {
					create_textbox(x, y, "Posicione a solução tampão 4 ou 7 sobre o agitador para calibrar")
					return
				}

				if _calibrando_4 {
					sprite_index = s_phmetro_medindo
					display_text = "ok"
					verificar_4 = true
					options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.AJUSTAR_PHMETRO, OPTIONS.MEDIR_PH, OPTIONS.PARAR_DE_MEDIR]
				}
				if _calibrando_7 {
					sprite_index = s_phmetro_medindo
					display_text = "ok"
					verificar_7 = true
					options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.AJUSTAR_PHMETRO, OPTIONS.MEDIR_PH, OPTIONS.PARAR_DE_MEDIR]
				}

				if verificar_4 and verificar_7 {
					create_textbox(x,y,"o phmetro concluiu a calibração com sucesso!")
					instance_destroy(obj_solucaoTampao_4)
					instance_destroy(obj_solucaoTampao_7)
					stop_measure()
				} else if _calibrando_4 {
					create_textbox(x, y, "substitua a solução tampão 4 pela 7")
				} else if _calibrando_7 {
					create_textbox(x, y, "substitua a solução tampão 7 pela 4")
				}
			} else {
				options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.MEDIR_PH]
			}
		} else {
			create_textbox(x, y, "o peagâmetro deve estar ligado")	
		}
	}
}
