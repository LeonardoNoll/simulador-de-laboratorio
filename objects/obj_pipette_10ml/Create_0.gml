event_inherited()

name = "Pipeta 10ml"
needed_EPI = [obj_glove, obj_lab_coat, obj_goggles]
on_release = change_pipette

content = ""
used = ""
max_ml = 10;
on_collect_success = undefined; // Pode ser definido pela pera ou pelo experimento
allowed_sources_list = []; // Definido pela pera
ph = 0
pear_instancing_info= {}
pear_on = false  
pear_sprite = s_pipette_10ml_with_pear;
pear_y_offset = 50;

liquid_draw_setup = {
	capacity_ml: 10,
	left_offset: -3,
    right_offset: 13,
    base_offset: 134,
    max_liquid_pixels: 500,
	pixels_per_ml: 13
}
