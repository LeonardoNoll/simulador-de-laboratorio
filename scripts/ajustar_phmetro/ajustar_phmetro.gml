function ajustar_phmetro(){
	with global.selected{
		if obj_phmetro.power_on{
			if obj_solucaoTampao_4 place_meeting(x, y, obj_magnetic_stirrer_experiment_6){
				sprite_index = s_phmetro_medindo
				display_text = "ok"
				create_textbox(x, y, "substitua a solução tampão 4 pela 7")
			}
		} else{
			create_textbox(x, y, "o peagâmetro deve estar ligado")	
		}
	}


}