function identificar(){
	with (global.selected) {
		identificado = true
		sprite_index = s_bottle_marked_empty
		options = [OPTIONS.REALIZAR_COLETA]
		name = "Pote Identificado"
	}
}