function create_textbox(_x, _y, _msg){
	if (!is_real(_x) || !is_real(_y)) {
		show_error("criar_textbox: Argumentos _x e _y devem ser numeros.", true);
		return;
    }

	close_ui_elements()
    
	// create_textbox(x, y, ["Mensagem 1", "Mensagem 2"])
	if(is_array(_msg)) {
		var _text_box = instance_create_layer(_x, _y, "Dialog", obj_text_box)
		var _list = _text_box.messages
		for (var _i = 0; _i < array_length(_msg); _i++; ){
			var _arr = _msg[_i]
			ds_list_add(_list, _arr)
		}
		return _text_box
	}
	// create_textbox(x, y, "Mensagem 1")
	else if(is_string(_msg)) {
		var _text_box = instance_create_layer(_x, _y, "Dialog", obj_text_box)
		var _list = _text_box.messages
		ds_list_add(_list,_msg)
		return _text_box
	}
}