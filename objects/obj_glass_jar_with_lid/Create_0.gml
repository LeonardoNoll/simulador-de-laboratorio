event_inherited();

identificado = false
contem_meio = false  // verifica se já possui o meio desidratado

if(room == rm_preparacao_de_meios_de_cultura_em_agar){
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}else{
	needed_EPI = [obj_lab_coat]
}

name = "Frasco de vidro com tampa"
content = ""

options = [OPTIONS.IDENFICIAR_RECIPIENTE, OPTIONS.ABRIR_TAMPA]

on_scale = false // verifica se está na balança

locked = false