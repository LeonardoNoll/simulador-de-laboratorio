if(!drag_mode) {
	if(!identificado) {
		criar_textbox(mouse_x-200, mouse_y-100, ["Você não pode fazer isso. Identifique o pote antes de realizar a coleta "])
		y = base_y
		x = base_x
	} else if (!other.pronto_para_coleta) {
		criar_textbox(mouse_x-200, mouse_y-100, ["Você não pode fazer a coleta ainda. Posicione o paciênte em uma posição de 45º"])
		y = base_y
		x = base_x
	} else {	
		other.locked = true
		locked = true
		y = 420
		x = 360
	}
}
