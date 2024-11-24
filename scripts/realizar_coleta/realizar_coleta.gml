function realizar_coleta(){
	if(instance_nearest(0,0,obj_sample_bottle).locked == true) {
		instance_create_layer(global.selected.x - 200, 100, "GUI", obj_cronometer)
		global.selected.options = [OPTIONS.CRONOMETRAR_COLETA]
	} else {
		criar_textbox(mouse_x+1, mouse_y-100, ["Você não pode fazer a coleta ainda. Posicione o paciênte em uma posição de 45º.", "Em seguida, posicione o pote corretamente."])
	}
}