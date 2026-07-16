function draw_liquid_on_pipette() {
	if (!variable_instance_exists(id, "ml") || ml <= 0) {
		return;
	}
	
	if (!variable_instance_exists(id, "liquid_draw_setup")) {
		show_debug_message("liquid_draw_setup não definido")
		return
	}
	
	_setup = liquid_draw_setup;
	
	var _xorigin = sprite_get_xoffset(sprite_index);
	var _yorigin = sprite_get_yoffset(sprite_index);
	var _bbox_left = sprite_get_bbox_left(sprite_index) - _xorigin;
	var _bbox_right = sprite_get_bbox_right(sprite_index) - _xorigin;
	var _bbox_top = sprite_get_bbox_top(sprite_index) - _yorigin;
	var _bbox_bottom = sprite_get_bbox_bottom(sprite_index) - _yorigin;
	
	var _left_offset = _bbox_left;
	var _right_offset = _bbox_right;
	var _base_offset = _bbox_bottom;
	var _max_liquid_pixels = max(1, _bbox_bottom - _bbox_top);
	
	//if (sprite_index == s_pipette_5ml) {
	//	_left_offset = 7;
	//	_right_offset = 14;
	//	_base_offset = 111;
	//	_max_liquid_pixels = 86;
	//} else if (sprite_index == s_pipette_10ml) {
	//	_left_offset = 7;
	//	_right_offset = 14;
	//	_base_offset = 139;
	//	_max_liquid_pixels = 152;
	//}
	
	if (is_struct(_setup)) {
		if (variable_struct_exists(_setup, "left_offset")) _left_offset = _setup.left_offset;
		if (variable_struct_exists(_setup, "right_offset")) _right_offset = _setup.right_offset;
		if (variable_struct_exists(_setup, "base_offset")) _base_offset = _setup.base_offset;
		if (variable_struct_exists(_setup, "max_liquid_pixels")) _max_liquid_pixels = _setup.max_liquid_pixels;
	}
	_max_liquid_pixels = max(1, _max_liquid_pixels);
	
	var _capacity_ml = variable_instance_exists(id, "max_ml") ? max_ml : 10;
	if (is_struct(_setup) && variable_struct_exists(_setup, "capacity_ml")) {
		_capacity_ml = _setup.capacity_ml;
	}
	_capacity_ml = max(1, _capacity_ml);
	
	var _pixels_per_ml = 3
	var _actual_pixels = image_yscale * clamp(ml * _pixels_per_ml, 0, _max_liquid_pixels);
	var _left_corner = x + image_xscale * _left_offset;
	var _right_corner = x + image_xscale * _right_offset;
	var _liquid_base = y + image_yscale * _base_offset;
	
	draw_set_color(_setup.liquid_color);
	show_debug_message(_actual_pixels)
	draw_rectangle(_left_corner, _liquid_base - _actual_pixels, _right_corner, _liquid_base, false);
}
