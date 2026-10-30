event_inherited()

name = "Pipeta 5ml"
max_ml = 5;
pear_sprite = s_pipette_5ml_with_pear;
pear_y_offset = 40;
needed_EPI = [obj_lab_coat]
liquid_draw_setup = {
	capacity_ml:5,
	liquid_color: c_white,
	left_offset: -5,
    right_offset: 14,
    base_offset: 108,
    max_liquid_pixels: 500,
	pixels_per_ml: 16
}