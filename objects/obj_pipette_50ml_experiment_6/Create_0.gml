event_inherited()

name = "Pipeta 50ml"
needed_EPI = [obj_glove, obj_lab_coat, obj_goggles]
on_release = change_pipette

content = ""
used = ""
ml = 50
max_ml = 50;
on_collect_success = undefined; // Pode ser definido pela pera ou pelo experimento
allowed_sources_list = []; // Definido pela pera
ph = 0
pear_instancing_info= {}
pear_on = false  
pear_sprite = s_pipette_10ml_with_pear;
pear_y_offset = 50;

liquid_draw_setup = {
	capacity_ml:50,
	liquid_color: c_white,
	left_offset: 6,
    right_offset: 5,
    base_offset: 90,
    max_liquid_pixels: 170,
	pixels_per_ml: 3
}
