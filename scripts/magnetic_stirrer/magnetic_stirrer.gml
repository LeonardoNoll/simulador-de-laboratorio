// liga o agitador magnético 
function magnetic_stirrer(){
	with(global.selected){
		// muda a sprite de acordo com a room do experimento 
		if(object_index == obj_glass_jar_with_lid){
				
			if(room = rm_preparacao_de_meios_de_cultura_em_caldo){
				sprite_index = s_glass_mixed
					
			}else if(room = rm_preparacao_de_meios_de_cultura_em_agar){
				sprite_index = s_glass_agar_mixed
			}
		}
	}
}

