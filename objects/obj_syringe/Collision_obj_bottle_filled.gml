// Destruir os 2 e instanciar novo objeto 
if(!other.drag_mode && !drag_mode) {
	// Instanciar seringa com amostra
	instance_create_layer(base_x, base_y-10, "Instances", obj_syringe_filled)
	// Tornar bekcer vazio e não interagível
	with (other) {
		options = []
		locked = true
		name = "Becker Vazio"
		sprite_index = s_bottle_marked_empty
	}
	instance_destroy(self)
}