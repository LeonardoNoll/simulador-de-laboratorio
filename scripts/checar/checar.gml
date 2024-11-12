function checar(){
	// Instancia array de mensagem
	var _msg = ["mensagem vazia"]


	// Atribui mensagem a ser demonstrada baseado no tipo do objeto	
	switch(global.selected.object_index) {
		case obj_sirynge:
			_msg = ["a seringa está vazia", "coloque-a no pote e sugue para estrair a amostra"]
			break
		case obj_bottle:
			if(global.selected.open){
				_msg = ["o pote esta aberto"]
			} else {
				_msg = ["o pote esta fechado"]
			}
			break
		case obj_syringe_and_bottle:
			if(global.selected.sugado) {
				_msg = ["A seringa possui" + string(global.selected.ml) + " ml"]
			} else {
				_msg = [
				"a seringa ainda está vazia", "tente sugar a amostra"]
			}
			break
	}



	// Mostra a mensagem resultante
	if(!instance_exists(obj_text_box)) {
		//Create
		var _tb = instance_create_layer(0,0, "Instances", obj_text_box)
	
		//Adicionar mensagens a lista de msgs
		var _list = _tb.messages
	
		for (var _i = 0; _i < array_length(_msg); _i++; ){
			var _arr = _msg[_i]
			ds_list_add(_list, _arr)
		}
	}
}