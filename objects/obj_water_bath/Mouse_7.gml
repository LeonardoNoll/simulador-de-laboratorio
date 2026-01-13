
var _visor_hitbox = {
	left: x + 75,
	right: x + 125,
	top: y - 40,
	bottom: y - 10
}

var _mouse_on_visor = mouse_x >= _visor_hitbox.left 
					&& mouse_x <= _visor_hitbox.right
					&& mouse_y >= _visor_hitbox.top
					&& mouse_y <= _visor_hitbox.bottom
					
if(_mouse_on_visor){
	close_ui_elements()
	instance_create_layer(room_width/2, room_height/2, "GUI", obj_water_bath_ui)
}