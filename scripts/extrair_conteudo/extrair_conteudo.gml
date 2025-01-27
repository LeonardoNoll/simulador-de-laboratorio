function extrair_conteudo(){
	syringe_filled = instance_create_depth(x, y-10, depth, obj_syringe_filled)
	with (obj_bottle_filled) {
		options = []
		locked = true
		name = "Becker Vazio"
		sprite_index = s_bottle_marked_empty
	}
	instance_destroy()
}