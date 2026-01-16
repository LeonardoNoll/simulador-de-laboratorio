// verifica se o frasco contém o meio desidratado e a água destilada
if(sprite_index == s_glass_bhi_distilled_water){ 
	var _magnetic = instance_nearest(x, y, obj_magnetic_stirrer)
	base_x = (_magnetic.x - 1)
	base_y = (_magnetic.y - 33)
	options = [OPTIONS.LIGAR_AGITADOR_MAGNETICO]
}else if(sprite_index == s_glass_mixed){
	options = [OPTIONS.TAMPA_ENTREABERTA]
}

