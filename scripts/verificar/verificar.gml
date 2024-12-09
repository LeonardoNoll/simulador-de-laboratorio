function verificar(){
	// Instancia array de mensagem
	with (global.selected) {
	var _msg = ["Mensagem Vazía"]

	// Atribui mensagem a ser demonstrada baseado no tipo do objeto	
	switch(object_index) {
		case obj_syringe_and_bottle:
				_msg = ["A seringa possui " + string(ml) + " mls"]
			break
	}

	// Mostra a mensagem resultante
	criar_textbox(mouse_x+1, y, _msg)
	}
}