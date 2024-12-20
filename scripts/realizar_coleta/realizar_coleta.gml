function realizar_coleta(){
	if(instance_nearest(0,0,obj_patient_head).pronto_para_coleta) {
		with (global.selected) {
			instance_create_layer(sprite_width + 50, sprite_height, "Instances", obj_cronometer)
			options = []
			return
		}
	}
		criar_textbox(mouse_x+1, mouse_y-100, ["Você não pode fazer a coleta ainda. Posicione o paciênte em uma posição de 45º.", "Em seguida, posicione o becker corretamente."])
}