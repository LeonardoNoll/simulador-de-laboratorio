function create_textbox(_x, _y, _msg){
	if (!is_real(_x) || !is_real(_y)) {
		show_error("criar_textbox: Argumentos _x e _y devem ser numeros.", true);
		return;
    }

    if (!is_array(_msg)) {
        show_error("criar_textbox: Argumento _msg deve ser array.", true);
        return;
    }
	
    close_ui_elements()
	
	var _text_box = instance_create_layer(_x, _y, "Dialog", obj_text_box)
	var _list = _text_box.messages
	for (var _i = 0; _i < array_length(_msg); _i++; ){
		var _arr = _msg[_i]
		ds_list_add(_list, _arr)
	}
	return _text_box
}