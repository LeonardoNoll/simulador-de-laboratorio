function draw_liquid_on_pipette() {
	if (!variable_instance_exists(id, "ml") || ml <= 0) {
		return;
	}
	if (!variable_instance_exists(id, "liquid_draw_setup")) {
		show_debug_message("liquid_draw_setup não definido")
		return
	}
	
	_setup = liquid_draw_setup;
	
	if (is_struct(_setup)) {
		if(!variable_struct_exists(_setup, "left_offset") ||
		!variable_struct_exists(_setup, "right_offset") ||
		!variable_struct_exists(_setup, "base_offset") ||
		!variable_struct_exists(_setup, "max_liquid_pixels") ||
		!variable_struct_exists(_setup, "pixels_per_ml")||
		!variable_struct_exists(_setup, "capacity_ml")
		) return
	}

	
	var _actual_pixels = image_yscale * clamp(ml * _setup.pixels_per_ml, 0, _setup.max_liquid_pixels);
	var _left_corner = x - image_xscale * _setup.left_offset;
	
	var _right_corner = x + image_xscale * _setup.right_offset;
	var _liquid_base = y + image_yscale * _setup.base_offset;

	
	draw_set_color(_setup.liquid_color);
	draw_rectangle(_left_corner, _liquid_base - _actual_pixels, _right_corner, _liquid_base, false);
}
