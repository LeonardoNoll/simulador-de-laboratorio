event_inherited();
activated = !activated

if(obj_btn_agar.visible = true){
	obj_btn_agar.visible = false
	// verifica se a tabela está aberta 
	if(instance_exists(obj_notes_table_9)){
		instance_destroy(obj_notes_table_9)
	}
}else{
	obj_btn_agar.visible = true // mostra os botões para cada tabela  
}