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
	base_x = 925
	base_y = 390
}

/*if(sprite_index == s_glass_jar_with_lid){
	create_textbox(mouse_x-200, mouse_y-100, ["Você precisa abrir o pote antes de usar a balança"])
	y = base_y
	x = base_x
}else if(!identificado){
	create_textbox(mouse_x-200, mouse_y-100, ["Você precisa identificar o pote antes de usar a balança"])
	y = base_y
	x = base_x
}else{
	base_x = 925
	base_y = 390
}*/
