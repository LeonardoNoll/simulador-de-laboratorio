if(!drag_mode && !locked) {
	if(!identificado) {
		criar_textbox(mouse_x-200, mouse_y-100, ["Você não pode fazer isso. Identifique o pote antes de realizar a coleta "])
		y = base_y
		x = base_x
	} else {
		instance_destroy(other)
		instance_create_layer(625, 282, "Instances", obj_patient_head)
		options = [OPTIONS.PREPARAR_PARA_COLETA]
		locked = true
		x = 550
		y = 275
	}
}
