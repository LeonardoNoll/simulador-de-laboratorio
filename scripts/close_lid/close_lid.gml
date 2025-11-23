//@function close_lid()
//@description fecha a tampa do frasco de vidro 
function close_lid(){
	with(global.selected){
		if(object_index == obj_glass_jar_with_lid){
			sprite_index = s_glass_mixed_autoclave
		}
	}
}

