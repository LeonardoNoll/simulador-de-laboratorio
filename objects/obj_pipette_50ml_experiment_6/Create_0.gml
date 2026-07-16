event_inherited()

name = "Pipeta 50ml"
needed_EPI = [obj_glove, obj_lab_coat, obj_goggles]
on_release = change_pipette

content = ""
used = ""
ml = 20
max_ml = 50;
on_collect_success = undefined; // Pode ser definido pela pera ou pelo experimento
allowed_sources_list = []; // Definido pela pera
ph = 0
pear_instancing_info= {}
pear_on = false  
pear_sprite = s_pipette_10ml_with_pear;
pear_y_offset = 50;
HCl_color = #A4D26F
water_color = #CFE6EE


liquid_draw_setup = {
	capacity_ml:50,
	liquid_color: c_red, //provisorio
	left_offset: 7,
    right_offset: 14,
    base_offset: 111,
    max_liquid_pixels: 86
}
