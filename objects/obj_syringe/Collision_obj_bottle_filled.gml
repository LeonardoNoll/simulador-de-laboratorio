// Dar a opção de sugar o item
if(!drag_mode) {
	x = other.x
	y = other.y-15
	locked = true
	options = [OPTIONS.EXTRAIR_CONTEUDO]
}

// -- Lógica em desuso
	// Instanciar seringa com amostra
	//instance_create_layer(base_x, base_y-10, "Instances", obj_syringe_filled) -- Spawn on rack
	//instance_create_depth(other.x, other.y-30, other.depth+1, obj_syringe_filled)
