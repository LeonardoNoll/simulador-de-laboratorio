function extract_content(){
	with (obj_bottle_filled) {
			name = "Becker Vazio"
			sprite_index = s_bottle_marked_empty
	}
	with(obj_syringe) {
		syringe_filled = instance_create_depth(x, y-10, depth, obj_syringe_filled)
		syringe_filled.rackX = base_x
		syringe_filled.rackY = base_y
		instance_destroy(self)
	}
}