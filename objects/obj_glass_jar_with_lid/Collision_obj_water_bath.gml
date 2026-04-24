if(obj_water_bath.temperature != 45){
		create_textbox(mouse_x-50, mouse_y-100,"Temperatura incorreta.")
}else{
	// verifica se o frasco está fechado 
	if(sprite_index == s_glass_agar_with_lid){
		// verifica se a temperatura está correta
		// posiciona o frasco dentro do banho-maria 
	    base_x = 270
	    base_y = 428
	    //locked = true
		depth = obj_water_bath.depth + 1; // deixa o frasco dentro, sem ficar na frente
	}else{
		create_textbox(mouse_x-50, mouse_y-100,"O frasco de vidro deve estar fechado.")
	}
}

with(obj_laminar_flow_hood){
	if(!laminar_flow_hood_is_ready){ // verifica se já não foi ligada anteriormente
		options = [OPTIONS.LIGAR_LUZ_ULTRAVIOLETA]
	}
}

