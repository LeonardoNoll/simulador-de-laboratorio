if(!locked && global.selected == noone){
	//Seguir mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
	
	// Impede que o usuário quebre a boneca
	if(image_angle > 30) {
		image_angle = 30
	} else if (image_angle < 0){
		image_angle = 0
	}

	// Criar menu caso angulo esteja no range certo, se não destroi
	if(30 <= image_angle && image_angle <= 35) {
		pronto_para_coleta = true
	} else {
		pronto_para_coleta = false
	}
}