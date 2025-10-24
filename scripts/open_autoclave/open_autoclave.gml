// @function open_autoclave()
//@description abre a autoclave
function open_autoclave(){
	with(global.selected){
		if(object_index == obj_autoclave){
			sprite_index = s_open_autoclave
		}
	}

}


