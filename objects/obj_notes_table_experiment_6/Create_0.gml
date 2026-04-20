margin_top = 150
cell_width = 150
cell_height = 30


col_names = ["Bebidas","pH inicial","5 mL","10 mL","15 mL","20 mL"]
row_names = ["Café","Suco limão","Coca-Cola","Energético","Isotônico","Iogurte Natural"]



//header
for(var i = 0; i < array_length(col_names); i++;) {
	var _new_col = instance_create_depth(x+i*cell_width, y-cell_height, depth-1, obj_col_header_experiment_6)
	_new_col.text = col_names[i]
	
}

// body
for(var i = 0; i < array_length(row_names); i++;) {
	var _new_row = instance_create_depth(x, y+i*cell_height, depth-1, obj_base_cell_style_experiment_6)
	_new_row.text = row_names[i]
	for(var j = 0; j < 5; j++;) {
		instance_create_depth(x+(j + 1)*cell_width, y+i*cell_height, depth-1, obj_writable_cell_experiment_6)
	}
}


// Buffer capacity only shows once liquids have been mixed


x_btn = instance_create_depth(x+cell_width*6,y-cell_height,depth-10, obj_btn_x)
x_btn.parent = self