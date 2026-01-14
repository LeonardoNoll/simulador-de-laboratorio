// remove o frasco da autoclave: cria uma instância na mesa 
function remove_glass_jar(){
	
	var mesa_x = 1050
	var mesa_y = 437
	
	instance_create_layer(mesa_x, mesa_y, "Instances", obj_glass_jar_with_lid)
	obj_glass_jar_with_lid.sprite_index = s_glass_mixed_autoclave
	
	// mostra a opção para fechar a tampa
	with(obj_glass_jar_with_lid){
		options = [OPTIONS.FECHAR_TAMPA]
		
	}
	
	
}