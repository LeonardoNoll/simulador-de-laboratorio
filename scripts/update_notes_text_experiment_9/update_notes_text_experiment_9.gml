function update_notes_texts_experiment_9(_notes_btn){
    for (var i = 0; i < instance_number(obj_writable_cell_experiment_9); i++) {
        _notes_btn.valores_ml[i] =
            instance_find(obj_writable_cell_experiment_9, i).text;
    }
}
