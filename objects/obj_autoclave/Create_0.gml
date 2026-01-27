event_inherited();

locked = true

name = "Autoclave"

if(room == rm_preparacao_de_meios_de_cultura_em_agar){
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}else{
	needed_EPI = [obj_lab_coat]
}


options = [OPTIONS.ABRIR_AUTOCLAVE]



