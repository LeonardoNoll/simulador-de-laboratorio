if (!locked && collision_point(mouse_x,mouse_y,obj_context_btn,false,true) == noone) {
	// Checa se EPI está equipada
	// Objetos não dependentes de EPI passam pelo teste automaticamente
	if(check_EPI(needed_EPI)){
		// Logica para arrastar			
		global.selected = id 
		drag_mode = true
		xx = x-mouse_x;
		yy = y-mouse_y;
	} else {
		create_textbox(x+sprite_width/2, y-sprite_height/2, ["Para interagir com este objeto você deve calçar os EPIs adequados. Calce todos os EPIs separados no seu armário."])
	}
}