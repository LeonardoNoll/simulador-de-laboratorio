var _btn = instance_find(obj_btn_notes_table_8, 0)

// verifica se todas as células já foram preenchidas
if (
    instance_exists(_btn) &&
    _btn.texts[0] != "" &&
    _btn.texts[1] != "" &&
    _btn.texts[2] != "" &&
    _btn.texts[3] != "" &&
    _btn.texts[4] != "" &&
    _btn.texts[5] != ""
) {
   room_goto(rm_parabens) // finaliza o experimento
}

// destrói
instance_destroy(obj_writable_cell_experiment_8)
instance_destroy(obj_base_cell_style_experiment_8)
instance_destroy(obj_col_header)
instance_destroy(x_btn)