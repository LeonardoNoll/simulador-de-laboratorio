// Destroi menu caso já exista
if (instance_exists(obj_menu)) {
	instance_destroy(obj_menu)
}


// Logica da criacao de menu
if(instance_exists(obj_inventory)) {
	// Checa se a luva esta equipada para seguir o experimento
	if(array_contains(instance_nearest(x, y, obj_inventory).itens, obj_gloves)) {
		global.selected = id // Seta o id
		var _my_menu = instance_create_layer(x + sprite_width, y, "Instances", obj_menu)  // Cria o menu
		_my_menu.options = options // Seta as opçoes do menu		
	} else {
		criar_textbox(["voce deve equipar a luva antes de prosseguir"])
	}
}