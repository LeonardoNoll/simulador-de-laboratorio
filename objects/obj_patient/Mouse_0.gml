/// @description Giro do paciente
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
show_debug_message(image_angle)


// Impede que o usuário quebre a boneca
if(image_angle > 50) {
	image_angle = 50
} else if (image_angle < -40){
	image_angle = -40
}

// Criar menu caso angulo esteja no range certo, se não destroi
if(40 <= image_angle && image_angle <= 50) {
	if(!instance_exists(obj_cronometer)) {
		instance_create_layer(room_width-500, 400, "GUI", obj_cronometer)
	}
} else if(instance_exists(obj_cronometer)) {
	instance_destroy(obj_cronometer)
}