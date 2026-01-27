event_inherited();

name = "Proveta graduada"

if(room == rm_preparacao_de_meios_de_cultura_em_agar){
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}else{
	needed_EPI = [obj_lab_coat]
}

content = ""

// função para as ações do usuário 
on_release = function() {
    // verifica se colidiu com o destilador
    if (place_meeting(x, y, obj_distiller)) { 
        spawn_context_menu([OPTIONS.PEGAR_AGUA_DESTILADA]);
    }else if (place_meeting(x, y, obj_glass_jar_with_lid)) { // verifica se colidiu com o frasco de vidro 
        
		// verifica se a proveta graduada está vazia 
        if (sprite_index != s_graduated_cylinder_2) {
            create_textbox(mouse_x - 200, mouse_y - 100, ["A proveta graduada está vazia"])
        }else{
            // verifica se o frasco contém o meio desidratado
            if (obj_glass_jar_with_lid.sprite_index == s_glass_bhi || obj_glass_jar_with_lid.sprite_index == s_glass_agar ) {
                spawn_context_menu([OPTIONS.PASSAR_LIQUIDO_PARA_O_FRASCO]);
            }else{
                create_textbox(mouse_x - 200, mouse_y - 100, ["O frasco precisa conter o meio desidratado"])
            }
        }
    }else {
        x = base_x
        y = base_y
    }
}

