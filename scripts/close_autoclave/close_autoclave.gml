// @function close_autoclave()
//@description fecha a autoclave
function close_autoclave(){
	with(global.selected){
		if(object_index == obj_autoclave){
			sprite_index = s_closed_autoclave
			// mostra a opção para ligar a autoclave
			options = [OPTIONS.LIGAR_AUTOCLAVE]
		}
	}

}


