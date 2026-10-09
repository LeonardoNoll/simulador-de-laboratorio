// Inherit the parent event
event_inherited()
content = ""

name = "microtubo"
if(room == rm_coleta_de_biofilme_supragengival_2){
	needed_EPI = []
	options = [OPTIONS.IDENFICIAR_RECIPIENTE]
	
}else{
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}
is_in_centrifuge = false
centrifuged = false
content_id = undefined
type = "microtube"
depth = -100 

