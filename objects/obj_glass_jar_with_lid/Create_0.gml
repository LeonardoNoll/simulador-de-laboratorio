event_inherited()

name = "Frasco de vidro com tampa"
content = ""

identificado = false
contem_meio = false  // verifica se já possui o meio desidratado

if(room == rm_preparacao_de_meios_de_cultura_em_agar){
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}else{
	needed_EPI = [obj_lab_coat]
}


options = [OPTIONS.IDENFICIAR_RECIPIENTE, OPTIONS.ABRIR_TAMPA]

on_scale = false // verifica se está na balança

locked = false

can_remove_glass_jar = false // verifica quando pode ser removida da autoclave 


// verifica se o frasco está em banho-maria 
if(room == rm_preparacao_de_meios_de_cultura_em_agar && base_x == 270 && base_y == 428){
	options = [OPTIONS.BANHO_MARIA]
}

if(can_remove_glass_jar == true){
	options = [OPTIONS.REMOVER_FRASCO]
}

