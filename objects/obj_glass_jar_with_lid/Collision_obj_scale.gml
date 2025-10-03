/*if(!drag_mode && !locked){
	if(!identificado){
		create_textbox(mouse_x-200, mouse_y-100, ["Você precisa identificar o pote antes de usar a balança"])
		y = base_y
		x = base_x
		
	}else{*/
		instance_destroy(other)
		instance_create_layer(973, 400, "Instances", obj_glass_jar_with_lid) // coordenadas da balança
		options = [OPTIONS.COLOCAR_OBJETO_NA_BALANCA]
		locked = true
		x = 550
		y = 275

	
/*	}
	
}*/