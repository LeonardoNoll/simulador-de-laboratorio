event_inherited();

name = "Proveta graduada"
needed_EPI = [obj_lab_coat]
content = ""

// função para as ações do usuário
on_release = function() {
	if(place_meeting(x,y,obj_distiller)) {
			spawn_context_menu([OPTIONS.PEGAR_AGUA_DESTILADA])
	}else{
		y = base_y
		x = base_x
	}
	
	if(place_meeting(x,y,obj_glass_jar_with_lid)) {
			spawn_context_menu([OPTIONS.PASSAR_LIQUIDO_PARA_O_FRASCO])
	}else{
		y = base_y
		x = base_x
	}
	
	
}

