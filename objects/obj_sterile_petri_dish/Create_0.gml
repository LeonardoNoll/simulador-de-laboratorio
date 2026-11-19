event_inherited()
petri_dish_id = 0

if(room == rm_preparacao_de_meios_de_cultura_em_agar){
	needed_EPI = [obj_glove,obj_lab_coat, obj_mask]
}else{
	needed_EPI = []
}

//needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]

name = "Placa de Petri estéril"

if (room == s_rm_laminar_flow_hood) {
    image_xscale = 2;
    image_yscale = 2;
}

filled = false
identificado = false
validated = false // verificação para validar o nome


