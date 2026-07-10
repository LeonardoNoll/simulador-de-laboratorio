function remove_pear() {
	with (global.selected) {
		var _pear_info = variable_instance_exists(id, "pear_equipped_info") ? pear_equipped_info : undefined;
		var _pear_x_offset = 10;
		var _pear_y_offset = variable_instance_exists(id, "pear_y_offset") ? pear_y_offset : 0;
		
		if (is_struct(_pear_info)) {
			if (variable_struct_exists(_pear_info, "pipette_sprite")) sprite_index = _pear_info.pipette_sprite;
			if (variable_struct_exists(_pear_info, "pipette_name")) name = _pear_info.pipette_name;
			if (variable_struct_exists(_pear_info, "pear_x_offset")) _pear_x_offset = _pear_info.pear_x_offset;
			if (variable_struct_exists(_pear_info, "pear_y_offset")) _pear_y_offset = _pear_info.pear_y_offset;
		} else if (variable_instance_exists(id, "max_ml")) {
			name = "Pipeta " + string(max_ml) + "ml";
		}
		
		base_x += _pear_x_offset;
		base_y += _pear_y_offset;
		x = base_x;
		y = base_y;
		options = [];
		scale_on_contact_list = [obj_suction_pear];
		on_release = change_pipette;
		pear_on = false;
		pear_equipped_info = undefined;
		ml = 0;
		ph = 0;
		content = "";
		instance_create_depth(
			pear_instancing_info.x,
			pear_instancing_info.y,
			depth - 1,
			pear_instancing_info.asset_type
		);
	}
}
