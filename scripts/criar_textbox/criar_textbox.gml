// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function criar_textbox(_msg){
	if(!instance_exists(obj_text_box)) {
	//Create
	var _tb = instance_create_layer(0,0, "GUI", obj_text_box)
	
	//Adicionar mensagens a lista de msgs
	var _list = _tb.messages
	
	for (var _i = 0; _i < array_length(_msg); _i++; ){
		var _arr = _msg[_i]
		ds_list_add(_list, _arr)
	}
}
}