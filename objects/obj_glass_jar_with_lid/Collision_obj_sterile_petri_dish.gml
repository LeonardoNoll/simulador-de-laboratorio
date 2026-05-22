// colisão somente na room da capela de fluxo laminar
if(room == rm_laminar_flow_hood){
	// verifica se a mistrua foi homogenizada 
	if(sprite_index = s_agar_and_blood_2){
		fill_petri_dish(other)
	}else{
		create_textbox(mouse_x-50, mouse_y-100,"Você precisa homogenizar a mistura antes.")
	}
}



