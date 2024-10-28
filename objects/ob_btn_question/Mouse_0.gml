if(!instance_exists(obj_text_box)) {
	//Create
	var _tb = instance_create_layer(0,0, "Instances", obj_text_box)
	
	//Adicionar mensagens a lista de msgs
	var _list = _tb.messages
	
	for (var i = 0; i < array_length_1d(msg); i++; ){
		var _arr = msg[i]
		ds_list_add(_list, _arr)
	}
}