margin_top = 150
cell_width = 120
cell_height = 30
col_number = array_length(textos_cabecalho)

//header
for(var i = 0; i < col_number; i++;) {
	var _new_col = instance_create_depth(x+i*cell_width, y-cell_height, depth-1, obj_col_header,{
		text: textos_cabecalho[i],
		parent: id,
		width: cell_width
	})
}

// body
for(var i = 0; i < col_number; i++;) {
	var _new_row = instance_create_depth(x+i*cell_width, y, depth-1, obj_writable_cell_experiment_6,{
		text: valores_ml[i],
		parent: id,
		width: cell_width
	})
}


// Buffer capacity only shows once liquids have been mixed


x_btn = instance_create_depth(x+cell_width*col_number,y-cell_height,depth-10, obj_btn_x)
x_btn.parent = id