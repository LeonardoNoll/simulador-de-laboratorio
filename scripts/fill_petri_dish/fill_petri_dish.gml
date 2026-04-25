function fill_petri_dish(_petri){
	
	_petri.sprite_index = s_sterile_petri_dish_blood
	
	// armazena cada placa de petri da room
	var p1 = instance_find(obj_sterile_petri_dish, 0)
	var p2 = instance_find(obj_sterile_petri_dish, 1)
	
	if(p1.sprite_index == s_sterile_petri_dish_blood && p2.sprite_index == s_sterile_petri_dish_blood){
		room_goto(rm_parabens)	
	}
}