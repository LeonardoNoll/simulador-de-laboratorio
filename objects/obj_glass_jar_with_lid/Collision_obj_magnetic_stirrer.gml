// verifica se o frasco contém o meio desidratado e a água destilada
if(sprite_index == s_glass_bhi_distilled_water){ 
	var _magnetic = instance_nearest(x, y, obj_magnetic_stirrer)
	base_x = (_magnetic.x - 2)
	base_y = (_magnetic.y - 37)
	options = [OPTIONS.LIGAR_AGITADOR_MAGNETICO]
}else if(sprite_index == s_glass_mixed){
	options = [OPTIONS.FECHAR_TAMPA]
}/*else{ // verificar 
	create_textbox(mouse_x-200, mouse_y-100, ["O frasco precisa conter o meio desidratado e a água destilada"])
}*/

