// passa o sangue para as placas de petri 
function fill_petri_dish(){
	if(other.object_index == obj_sterile_petri_dish){
		// só executa se ainda não estiver preenchida
		if(other.sprite_index != s_sterile_petri_dish_blood){
			// verifica qual foi placa de petri que colidiu 
			if(other.petri_dish_id == 1){
				other.sprite_index = s_sterile_petri_dish_blood
				global.filled_petri_dishes += 1
			}else{
				other.sprite_index = s_sterile_petri_dish_blood
				global.filled_petri_dishes += 1
			}
		}
	}
	// verifica se as duas placas de petri estão com o conteúdo
	if(global.filled_petri_dishes == 2){
		alarm[0] = 1 // espera alguns frames para ir para a outra room
	}
}