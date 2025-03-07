if(!drag_mode) {
	// Destroi menu caso já exista
	if (instance_exists(obj_menu)) {
		instance_destroy(obj_menu)
	}

	if(array_length(options) > 0) {
		// Logica da criacao de menu
		global.selected = id // Seta o id
		var _my_menu = instance_create_layer(x + (x > room_width/2 ? -(sprite_width+80) : sprite_width), y, "GUI", obj_menu)
		_my_menu.options = options // Seta as opçoes do menu
		_my_menu.parent = self
	}
}