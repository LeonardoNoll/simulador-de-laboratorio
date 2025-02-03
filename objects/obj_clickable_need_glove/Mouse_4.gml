if (!locked) {
	// Destroi menu de contexto caso exista
	if (instance_exists(obj_menu)) {
		instance_destroy(obj_menu)
	}



	// Logica da criacao de menu
	if(instance_exists(obj_inventory_btn)) {
		// Checa se a luva esta equipada para seguir o experimento
		var _inv = obj_inventory_btn.itens
		if(array_contains(_inv, obj_glove) && array_contains(_inv, obj_lab_coat)){
			// Logica para arrastar			
			global.selected = id // Desceleciona para evitar comportamentos inesperados 
			drag_mode = true
			xx = x-mouse_x;
			yy = y-mouse_y;

			} else {
			criar_textbox(x+sprite_width/2, y-sprite_height/2, ["Para interagir com este objeto você deve calçar os EPIs adequados. Calce as luvas e vista seu jaleco."])
		}
	}
}