function verificar(){
	// Instancia array de mensagem
	var _msg = ["mensagem vazia"]
	var _selected  = global.selected

	// Atribui mensagem a ser demonstrada baseado no tipo do objeto	
	switch(_selected.object_index) {
		case obj_syringe:
			_msg = ["a seringa está vazia", "coloque-a no pote e sugue para estrair a amostra"]
			break
		case obj_bottle_filled:
			if(global.selected.open){
				_msg = ["o pote esta aberto"]
			} else {
				_msg = ["o pote esta fechado"]
			}
			break
		case obj_syringe_and_bottle:
				//_aux = instance_nearest(0,0,obj_syringe_and_bottle)
				_msg = ["A seringa possui " + string(global.selected.ml) + " ml"]
				//_msg = ["A seringa possui " + string(_aux.ml) + " ml"]
			break
	}



	// Mostra a mensagem resultante
	criar_textbox(mouse_x+1, global.selected.y, _msg)
}