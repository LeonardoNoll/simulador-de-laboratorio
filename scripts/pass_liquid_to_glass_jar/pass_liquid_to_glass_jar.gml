//@function pass_liquid_to_glass_jar(_jar)
//@description passa a água destilada para o frasco de vidro 
function pass_liquid_to_glass_jar(){
	var _glass_jar = instance_nearest(x, y, obj_glass_jar_with_lid)
	
	if(room = rm_preparacao_de_meios_de_cultura_em_caldo){
		_glass_jar.sprite_index = s_glass_bhi_distilled_water; // muda a sprite
		
	}else if (room = rm_preparacao_de_meios_de_cultura_em_agar){
		_glass_jar.sprite_index = s_glass_agar_distilled_water; // muda a sprite
	}
	
	_glass_jar.name = "Frasco de vidro com o meio desidratado e água destilada" // muda o nome
	
	// esvazia a proveta graduada
	obj_graduated_cylinder.sprite_index = s_graduated_cylinder
}