// Destroi menu caso já exista
if (instance_exists(obj_menu)) {
	instance_destroy(obj_menu)
}

// Logica da criacao de menu
global.selected = id // Seta o id
var _my_menu = instance_create_layer(x + sprite_width, y, "Instances", obj_menu)  // Cria o menu
_my_menu.options = options // Seta as opçoes do menu
