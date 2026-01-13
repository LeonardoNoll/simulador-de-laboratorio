//@function close_lid()
//@description deixa a tampa entreaberta
function lid_ajar(){
	with(global.selected){
		if(object_index == obj_glass_jar_with_lid){
			sprite_index = s_glass_mixed_autoclave
		}
	}
}

