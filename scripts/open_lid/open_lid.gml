//@function open_lid()
//@description abre a tampa do frasco de vidro 
function open_lid(){
	with(global.selected){
		if(object_index == obj_glass_jar_with_lid){
			if(room == rm_laminar_flow_hood){ 
				sprite_index = s_glass_agar_mixed_laminar_flow_hood
			}else{
				sprite_index = s_glass_jar_open
				options = [OPTIONS.REIDENFICIAR_RECIPIENTE] // não aparece mais a opção de abrir a tampa
			}	
		}
	}
}