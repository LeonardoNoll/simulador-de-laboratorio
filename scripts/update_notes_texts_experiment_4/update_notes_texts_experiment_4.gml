function update_notes_texts_experiment_4(_notes_btn){
	for (var i = 0; i < instance_number(obj_writable_cell_experiment_4); i++) {
		_notes_btn.texts[i] = instance_find(obj_writable_cell_experiment_4, i).text;
	}
}
