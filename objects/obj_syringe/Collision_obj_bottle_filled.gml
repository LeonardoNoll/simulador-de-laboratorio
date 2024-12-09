// Destruir os 2 e instanciar novo objeto 
if(!other.drag_mode && !drag_mode) {
		instance_create_layer(base_x, base_y-10, "Instances", obj_syringe_and_bottle)
		//instance_destroy(other)
		with (other) {
			options = []
			locked = true
			name = "Pote Vazio"
			sprite_index = s_bottle_marked_empty
		}
		instance_destroy(self)
}