	for(var i = 0; i < array_length(experiment_materials_btns); i++){
		var _current_btn = experiment_materials_btns[i]
		var _target_pos = experiment_materials_btns_positions[i] + (activated ? 300 : 0)
		
		_current_btn.y = lerp(_current_btn.y, _target_pos, 0.2)
	}		