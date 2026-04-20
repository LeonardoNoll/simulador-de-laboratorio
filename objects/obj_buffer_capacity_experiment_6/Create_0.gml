key = instance_create_depth(x,y, depth, obj_base_cell_style_experiment_6)
key.text = "Seleciona a capacidade tampão"
key.width = 450


var _answers = ["Baixa", "Intermediária", "Boa"]
for(var i = 0; i < array_length(_answers); i++;) {
	var _new_cell = instance_create_depth(x+i*450/3, y+30, depth-1, obj_clickable_cell_experiment_6)
	_new_cell.text = _answers[i]
}

//value = instance_create_depth(x + key.width, y, depth-1, obj_capacity_select, {width: 225})

//instance_create_depth(x,y+31, depth-1, obj_capacity_confirm)