function spawn_context_menu(_custom_options = []){
	if (instance_exists(obj_context_menu)) {
		instance_destroy(obj_context_menu)
	}

	if(array_length(options) == 0 && array_length(_custom_options) == 0) return
	
	if(!check_EPI(needed_EPI)) {
		create_textbox(x+sprite_width/2, y-sprite_height/2, ["Para interagir com este objeto você deve calçar os EPIs adequados. Calce as luvas e vista seu jaleco."])
		return
	}
		
	global.selected = id 
	
	var _obj_menu_width = 208
	var _left_displacement =   x - sprite_width / 2 - _obj_menu_width - 10
	var _right_displacement = x + sprite_width / 2 + 10
	var _x_displacement = mouse_x > room_width/2 ? _left_displacement : _right_displacement
	
	// Usa options do objeto que chamou a função se 
	// _custom_options não for passado
	var _my_menu = instance_create_layer(_x_displacement, mouse_y, "GUI", obj_context_menu, {
		options: array_length(_custom_options) > 0 ? _custom_options : options,
	})
}