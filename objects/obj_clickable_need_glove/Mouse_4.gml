if (!locked) {
	// Destroi menu de contexto caso exista
	if (instance_exists(obj_menu)) {
		instance_destroy(obj_menu)
	}

	// Desceleciona para evitar comportamentos inesperados 
	global.selected = id

	// Logica da criacao de menu
	if(instance_exists(obj_inventory)) {
		// Checa se a luva esta equipada para seguir o experimento
		if(array_contains(instance_nearest(x, y, obj_inventory).itens, obj_luva)) {
			// Logica para arrastar
			drag_mode = true;
			on_table = false;
			xx = x-mouse_x;
			yy = y-mouse_y;

			// Mudança de escala decorativa
			image_xscale = 1.2;
			image_yscale = 1.2
			} else {
			criar_textbox(x+sprite_width/2, y-sprite_height/2, ["Para interagir com este objeto, você deve primeiro equipar a luva."])
		}
	}
}