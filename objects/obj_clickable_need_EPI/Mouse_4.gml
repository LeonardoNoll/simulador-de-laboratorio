var _colliding_instance = instance_place(x,y,all)

// Checa se não tem nenhum objeto na frente
if(_colliding_instance == noone || object_get_parent(_colliding_instance.object_index) != obj_context_btn || _colliding_instance.depth < depth) {
	if (!locked) {
		// Destroi menu de contexto caso exista
		if (instance_exists(obj_menu)) {
			instance_destroy(obj_menu)
		}
		// Checa se EPI está equipada
		// Objetos não dependentes de EPI passam pelo teste automaticamente
		if(check_EPI(needed_EPI)){
			// Logica para arrastar			
			global.selected = id 
			drag_mode = true
			xx = x-mouse_x;
			yy = y-mouse_y;
		} else {
			criar_textbox(x+sprite_width/2, y-sprite_height/2, ["Para interagir com este objeto você deve calçar os EPIs adequados. Calce as luvas e vista seu jaleco."])
		}
	}
}