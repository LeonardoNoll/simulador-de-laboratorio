if(sprite_index == s_bottle_empty){ 
	create_textbox(x+sprite_width/2, y-sprite_height/2, "O becker deve conter algum conteúdo")
	return
}else{
	var _magnetic = instance_nearest(x, y, obj_magnetic_stirrer_experiment_6)
	base_x = (_magnetic.x - 2)
	base_y = (_magnetic.y - 37)
	options = [OPTIONS.LIGAR_AGITADOR_MAGNETICO, OPTIONS.REMOVER_DO_PHMETRO]
	locked = true
}
if name != original_name {
	options = [OPTIONS.REMOVER_DO_PHMETRO, OPTIONS.DESLIGAR_AGITADOR]
}