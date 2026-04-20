function ajustar_phmetro(){
	with global.selected{
		if power_on {
			if verificar_4 = false or verificar_7 = false{
				if  place_meeting(x, y, obj_solucaoTampao_4) {
					sprite_index = s_phmetro_medindo
					display_text = "ok"
					options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.AJUSTAR_PHMETRO, OPTIONS.MEDIR_PH, OPTIONS.PARAR_DE_MEDIR]
					create_textbox(x, y, "substitua a solução tampão 4 pela 7")
					verificar_4 = true
				}
				if place_meeting(x, y, obj_solucaoTampao_7){
					sprite_index = s_phmetro_medindo
					display_text = "ok"
					options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.AJUSTAR_PHMETRO, OPTIONS.MEDIR_PH, OPTIONS.PARAR_DE_MEDIR]
					create_textbox(x, y, "substitua a solução tampão 7 pela 4")
					verificar_7 = true
				}
			} else {
				options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.MEDIR_PH]
			} 
		} else {
			create_textbox(x, y, "o peagâmetro deve estar ligado")	
		}
		
	}


}
