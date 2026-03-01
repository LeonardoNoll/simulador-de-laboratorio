on_scale = true // verifica se o frasco está na balança

// verifica se o frasco foi identificado
if(!identificado){
	create_textbox(mouse_x-200, mouse_y-100, ["Você precisa identificar o frasco antes de usar a balança"])
	y = base_y
	x = base_x
	
// verifica se o frasco está aberto 
}if(sprite_index == s_glass_jar_with_lid){
	create_textbox(mouse_x-200, mouse_y-100, ["Você precisa abrir o frasco antes de usar a balança"])
	y = base_y
	x = base_x
}else{
	// posiciona o frasco na balança
	var _scale = instance_nearest(x, y, obj_scale)
	base_x = (_scale.x - 2)
	base_y = (_scale.y - 30)
}

