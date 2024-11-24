// Destroi menu caso já exista
if (instance_exists(obj_menu)) {
	instance_destroy(obj_menu)
}


// Logica da criacao de menu
if(array_length(options) > 0) {
	// Checa se a luva esta equipada para seguir o experimento
	if(array_contains(instance_nearest(x, y, obj_inventory).itens, obj_gloves)) {
		global.selected = id 
		var _my_menu = instance_create_layer(x + sprite_width, y, "Instances", obj_menu)  // Cria o menu
		// Passa para o menu as opções definidas no Create
		_my_menu.options = options 
	} else {
		criar_textbox(x+sprite_width/2, y-sprite_height/2,["voce deve equipar a luva antes de prosseguir"])
	}
}