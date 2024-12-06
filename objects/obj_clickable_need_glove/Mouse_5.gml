
if(!drag_mode) {
	// Destroi menu caso já exista
	if (instance_exists(obj_menu)) {
		instance_destroy(obj_menu)
	}

	// Criar menu se options estiver setado
	if(array_length(options) > 0) {
		// Checa se a luva esta equipada para seguir o experimento
		if(array_contains(instance_nearest(x, y, obj_inventory).itens, obj_gloves)) {
			// Logica da criacao de menu
			global.selected = id // Seta o id
			var _my_menu
			if(x > room_width/2) {
				_my_menu = instance_create_layer(x - (sprite_width + 80), y, "Instances", obj_menu)  // Cria o menu
			} else {
				_my_menu = instance_create_layer(x + sprite_width, y, "Instances", obj_menu)
			}
			_my_menu.options = options // Seta as opçoes do menu
		} else {
			criar_textbox(x+sprite_width/2, y-sprite_height/2, ["Para interagir com este objeto, você deve primeiro equipar a luva."])
		}
	}
}