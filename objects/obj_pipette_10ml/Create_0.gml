event_inherited()

name = "Pipeta 10ml"
needed_EPI = [obj_glove, obj_lab_coat, obj_goggles]
on_release = change_pipette

content = ""
used = ""
ml = 0
max_ml = 10;
on_collect_success = undefined; // Pode ser definido pela pera ou pelo experimento
allowed_sources_list = []; // Definido pela pera
ph = 0
pear_inicial_positon= {}
pear_on = false  
pear_sprite = s_pipette_10ml_with_pear;
pear_y_offset = 50;
HCl_color = #A4D26F
water_color = #CFE6EE
