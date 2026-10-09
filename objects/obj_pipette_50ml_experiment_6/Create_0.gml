event_inherited()

name = "Pipeta 50ml"
needed_EPI = [obj_lab_coat]
on_release = change_pipette

content = ""
used = ""
ml = 0
max_ml = 50;
on_collect_success = undefined; // Pode ser definido pela pera ou pelo experimento
allowed_sources_list = []; // Definido pela pera
ph = 0
pear_instancing_info= {}
pear_on = false  
pear_sprite = s_pipette_10ml_with_pear;
pear_y_offset = 50;

liquid_draw_setup = {
	liquid_color: c_red,
	capacity_ml: 10,
	left_offset: -5,
    right_offset: 13,
    base_offset: 134,
	pixels_per_ml: 3,
	max_liquid_pixels: 150,
}
