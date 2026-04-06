// passa o sangue para as placas de petri 
function fill_petri_dish(){
	if(other.object_index == obj_sterile_petri_dish){
		// verificar qual placa de petri que colidiu 
		if(other.petri_dish_id == 1){
			other.sprite_index = s_sterile_petri_dish_blood
		}else{
			other.sprite_index = s_sterile_petri_dish_blood
		}
	}
	room_goto(rm_parabens)
}