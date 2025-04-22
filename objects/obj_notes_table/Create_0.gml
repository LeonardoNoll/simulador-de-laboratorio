margin_top = 150
cell_width = 150
cell_height = 30


col_names = ["Solução", "pH inicial"]
row_names = ["Água destilada", "Saliva estimulada", "Ácido clorídrico"]

second_col_names = ["Solução", "pH inicial", "pH após 10 min"]
second_row_names = ["HCl + saliva", "HCl + água"]

//header
for(var i = 0; i < array_length(col_names); i++;) {
	var _new_col = instance_create_depth(x+i*cell_width, y-cell_height, depth-1, obj_col_header)
	_new_col.text = col_names[i]
}

// body
for(var i = 0; i < array_length(row_names); i++;) {
	var _new_row = instance_create_depth(x, y+i*cell_height, depth-1, obj_base_cell_style)
	_new_row.text = row_names[i]
	instance_create_depth(x+cell_width, y+i*cell_height, depth-1, obj_writable_cell)
}



for(var i = 0; i < array_length(second_col_names); i++;) {
	var _new_col = instance_create_depth(x+i*cell_width, margin_top+y-cell_height, depth-1, obj_col_header)
	_new_col.text = second_col_names[i]
}

for(var i = 0; i < array_length(second_row_names); i++;) {
	var _new_row = instance_create_depth(x, margin_top+y+i*cell_height, depth-1, obj_base_cell_style)
	_new_row.text = second_row_names[i]
	instance_create_depth(x+cell_width, margin_top+y+i*cell_height, depth-1, obj_writable_cell)
	instance_create_depth(x+cell_width*2, margin_top+y+i*cell_height, depth-1, obj_writable_cell)
}

instance_create_depth(x, y+margin_top + cell_height*3, depth-1, obj_buffer_capacity)

x_btn = instance_create_depth(x+cell_width*2,y-cell_height,depth-10, obj_btn_x)
x_btn.parent = self