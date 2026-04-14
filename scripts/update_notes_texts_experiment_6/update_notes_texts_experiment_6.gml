function update_notes_texts_experiment_6(){
	var _current_texts = []  
	for (var i = 0; i < instance_number(obj_writable_cell_experiment_6); i++) {
		_current_texts[i] = instance_find(obj_writable_cell_experiment_6, i).text
	}

	obj_btn_notes_table_experiment_6.texts = _current_texts
}