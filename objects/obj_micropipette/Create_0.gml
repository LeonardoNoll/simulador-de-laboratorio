event_inherited()
name = "micropipeta"
type = "micropipette"

drag_mode = false
original_angle = image_angle // armazena o ângulo original 
calibrated = false 

if(room == rm_coleta_de_biofilme_supragengival_2){
	needed_EPI = []
	options = [OPTIONS.CALIBRAR_MICROPIPETA]
}else{
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}

