function realizar_coleta(){
	with (global.selected) {
		if(locked == true) {
			instance_create_layer(sprite_width + 50, sprite_height, "Instances", obj_cronometer)
			options = [OPTIONS.CRONOMETRAR_COLETA]
			return
		}
		criar_textbox(mouse_x+1, mouse_y-100, ["Você não pode fazer a coleta ainda. Posicione o paciênte em uma posição de 45º.", "Em seguida, posicione o pote corretamente."])
	}
}