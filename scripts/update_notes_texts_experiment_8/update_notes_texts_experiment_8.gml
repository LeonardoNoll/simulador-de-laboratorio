function update_notes_texts_experiment_8(_notes_btn){
    for (var i = 0; i < instance_number(obj_writable_cell_experiment_8); i++) {
        _notes_btn.texts[i] =
            instance_find(obj_writable_cell_experiment_8, i).text;
    }
}