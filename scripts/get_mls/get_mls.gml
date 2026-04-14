function get_mls(){
	var _hitlist = [obj_25ml_becker]
	
	if(!place_meeting(x,y, _hitlist)) return	
	
	var _others = ds_list_create()
	instance_place_list(x,y, _hitlist, _others, true)
	var _other = ds_list_find_value(_others, 0)
	
	if(used != "" && used !=  _other.content) {
		create_textbox(x, y, ["Você não pode utilzar em mais de um líquido a mesma pipeta. Troque a pipeta por uma nova."])
		return
	}
	if(_other.content == "") {
		create_textbox(x,y, ["Você não pode coletar o líquido de um recipiente vazio."])	
		return
	}
	take_ml_input(_other)

	ds_list_destroy(_others)
}



