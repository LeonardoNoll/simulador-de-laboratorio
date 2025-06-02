	for(var i = 0; i < array_length(experiment_materials_btns); i++){
		var _target_pos = experiment_materials_btns_positions[i] - (activated ? 300 : 0)
		show_debug_message(_target_pos)
		experiment_materials_btns[i].x = lerp(experiment_materials_btns[i].x, _target_pos, 0.2) 
	}
		