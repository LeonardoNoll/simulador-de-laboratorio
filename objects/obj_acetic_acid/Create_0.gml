event_inherited()

name = "Ácido acético"

if(room == rm_coleta_de_biofilme_supragengival_2){
	needed_EPI = []
}else if(room == rm_acao_do_fluoreto_na_casca_do_ovo){
	needed_EPI = [obj_glove,obj_lab_coat]
}else{
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}


can_pour_acetic_acid = false // verifica se pode usar o ácido acético

if (global.selected == id){
    sprite_index = s_acetic_acid_2
}
