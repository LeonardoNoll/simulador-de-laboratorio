// fecha a tampa do frasco de vidro 
function close_lid(){
	
	with(global.selected){
		if(object_index == obj_glass_jar_with_lid){
			
			// finaliza o experimento: preparação de meios de cultura em caldo
			if(room == rm_preparacao_de_meios_de_cultura_em_caldo){
				sprite_index = s_glass_jar_with_lid_2
			
			//finaliza o experimento
			room_goto(rm_parabens)
			}	
			
			
			
			
		}
	}

}