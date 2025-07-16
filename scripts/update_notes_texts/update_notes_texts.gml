function update_notes_texts(){
	var _current_texts = []  
	for (var i = 0; i < instance_number(obj_writable_cell); i++) {
		_current_texts[i] = instance_find(obj_writable_cell, i).text
	}

	obj_btn_notes_table.texts = _current_texts
}