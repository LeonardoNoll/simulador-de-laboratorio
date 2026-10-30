event_inherited()
name = "caixa com ponteiras de 1mL"
if(room == rm_coleta_de_biofilme_supragengival_2){
	needed_EPI = []
	sprite_index = s_1ml_pipette_tip_open
	locked = true 
	
}else{
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}
type = "one_ml_pipette_tip"


