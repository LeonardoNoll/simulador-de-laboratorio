/// @function                 log(message);
/// @param {string}  message  The message to show
/// @description              Show a message whenever the function is called.
function update_notes_texts_experiment_6(_notes_btn){
	for (var i = 0; i < instance_number(obj_writable_cell_experiment_6); i++) {
		_new_text = instance_find(obj_writable_cell_experiment_6, i).text
		_notes_btn.valores_ml[i] = instance_find(obj_writable_cell_experiment_6, i).text
	}

	//obj_btn_notes_table_experiment_6.texts = _current_texts
}