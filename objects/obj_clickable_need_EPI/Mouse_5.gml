
if(!drag_mode) {
	// Destroi menu caso já exista
	if (instance_exists(obj_menu)) {
		instance_destroy(obj_menu)
	}

	// Criar menu se options estiver setado
	if(array_length(options) > 0) {
		if(check_EPI(needed_EPI)) {
			// Logica da criacao de menu
			global.selected = id 
			var _my_menu = instance_create_layer(mouse_x + (mouse_x > room_width/2 ? -200 : sprite_width), mouse_y, "GUI", obj_menu)
			_my_menu.options = options
			_my_menu.parent = self
		} else {
			criar_textbox(x+sprite_width/2, y-sprite_height/2, ["Para interagir com este objeto você deve calçar os EPIs adequados. Calce as luvas e vista seu jaleco."])
		}
	}
}