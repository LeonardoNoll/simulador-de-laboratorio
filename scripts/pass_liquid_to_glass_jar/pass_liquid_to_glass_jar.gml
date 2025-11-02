//@function pass_liquid_to_glass_jar()
//@description passa a água destilada para o frasco de vidro 

function pass_liquid_to_glass_jar(){
	with(global.selected){
		if(object_index == obj_glass_jar_with_lid){
			sprite_index = s_glass_bhi_distilled_water
		}
	}

}