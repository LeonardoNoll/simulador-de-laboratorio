function ajustar_phmetro(){
	with global.selected{
		if obj_phmetro.power_on{
			if  place_meeting(x, y, obj_solucaoTampao_4){
				sprite_index = s_phmetro_medindo
				display_text = "ok"
				options = [OPTIONS.LIGAR_PHMETRO, OPTIONS.AJUSTAR_PHMETRO, OPTIONS.MEDIR_PH, OPTIONS.PARAR_DE_MEDIR]
				create_textbox(x, y, "substitua a solução tampão 4 pela 7")
			}
		} else{
			create_textbox(x, y, "o peagâmetro deve estar ligado")	
		}
		
	}


}
