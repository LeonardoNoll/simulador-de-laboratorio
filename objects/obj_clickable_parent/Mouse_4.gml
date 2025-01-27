if(!locked){
	// Destroi menu de contexto caso exista
	if (instance_exists(obj_menu)) {
		instance_destroy(obj_menu)
	}

	// Desceleciona para evitar comportamentos inesperados 
	global.selected = id

	// Logica para arrastar
	drag_mode = true;
	xx = x-mouse_x;
	yy = y-mouse_y;
}