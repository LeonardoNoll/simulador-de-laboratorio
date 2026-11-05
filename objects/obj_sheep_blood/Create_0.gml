event_inherited()

if(room == rm_preparacao_de_meios_de_cultura_em_agar){
	needed_EPI = [obj_glove,obj_lab_coat, obj_mask]
}else{
	needed_EPI = []
}

name = "Sangue de carneiro desfibrinado estéril"
content = name

if (room == s_rm_laminar_flow_hood) {
    image_xscale = 2;
    image_yscale = 2;
}

