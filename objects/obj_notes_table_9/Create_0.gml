margin_top = 150

cell_width = 180
cell_height = 30

col_number = array_length(textos_cabecalho)

var table_offset_x = 0

// HEADER
for (var i = 0; i < col_number; i++) {
    var _new_col = instance_create_depth(
        x + table_offset_x + i * cell_width,
        y - cell_height,
        depth - 1,
        obj_col_header,
        {
            text: textos_cabecalho[i],
            parent: id,
            width: cell_width,
            height: cell_height
        }
    )
}


// BODY
for (var i = 0; i < col_number; i++) {
    var _new_row = instance_create_depth(
        x + table_offset_x + i * cell_width,
        y,
        depth - 1,
        obj_writable_cell_experiment_9,
        {
            text: valores_ml[i],
            parent: id,
            width: cell_width,
            height: cell_height
        }
    )
}


// BOTÃO X
x_btn = instance_create_depth(
    x + table_offset_x + cell_width * col_number,
    y - cell_height,
    depth - 10,
    obj_btn_x
)
x_btn.parent = id

