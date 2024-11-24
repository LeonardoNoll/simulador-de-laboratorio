function verificar(){
	// Instancia array de mensagem
	var _msg = ["mensagem vazia"]
	var _selected  = global.selected

	// Atribui mensagem a ser demonstrada baseado no tipo do objeto	
	switch(_selected.object_index) {
		case obj_syringe_and_bottle:
				_msg = ["A seringa possui " + string(global.selected.ml) + " ml"]
			break
	}



	// Mostra a mensagem resultante
	criar_textbox(mouse_x+1, global.selected.y, _msg)
}