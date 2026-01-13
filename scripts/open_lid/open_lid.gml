//@function open_lid()
//@description abre a tampa do frasco de vidro 
function open_lid(){
	with(global.selected){
		if(object_index == obj_glass_jar_with_lid){
			sprite_index = s_glass_jar_open
			options = [OPTIONS.REIDENFICIAR_RECIPIENTE] // não aparece mais a opção de abrir a tampa
		}
	}
}