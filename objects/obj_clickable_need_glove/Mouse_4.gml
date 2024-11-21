//@description Mover se lova equipada
// Destroi menu de contexto caso exista
if (instance_exists(obj_menu)) {
	instance_destroy(obj_menu)
}



// Desceleciona para evitar comportamentos inesperados 
global.selected = noone

// Logica da criacao de menu
if(instance_exists(obj_inventory)) {
	// Checa se a luva esta equipada para seguir o experimento
	if(array_contains(instance_nearest(x, y, obj_inventory).itens, obj_gloves)) {
		// Logica para arrastar
		drag_mode = true;
		on_table = false;
		xx = x-mouse_x;
		yy = y-mouse_y;

		// Mudança de escala decorativa
		image_xscale = 1.2;
		image_yscale = 1.2
		} else {
		criar_textbox(["voce deve equipar a luva antes de prosseguir"])
	}
}