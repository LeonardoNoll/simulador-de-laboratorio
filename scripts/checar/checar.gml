function checar(){
	// Instancia array de mensagem
	var _msg = ["mensagem vazia"]

	// Atribui mensagem a ser demonstrada baseado no tipo do objeto	
	switch(global.selected.object_index) {
		case obj_sirynge:
			_msg = ["isto é um seringa vazia"]
			break
		case obj_bottle:
			_msg = ["isto é uma becker"]
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