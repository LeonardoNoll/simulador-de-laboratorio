function cronometer(){
	// verifica se o cronômetro existe 
	if (instance_exists(obj_cronometer)) {
        return
    }

    instance_create_layer(
        room_width - 190, 120, "GUI", obj_cronometer
    )

    obj_cronometer.on_count_sucess = function() {
		
		// verifica a room
		if(room == rm_preparacao_de_meios_de_cultura_em_caldo){
			 create_textbox(x + sprite_width, y,
            ["O frasco já pode ser retirado da autoclave."])

	        with (obj_autoclave) {
	            options = [OPTIONS.REMOVER_FRASCO]
	        }
		}else if(room == rm_preparacao_de_meios_de_cultura_em_agar){
			create_textbox(x + sprite_width, y,
            ["A capela de fluxo laminar já está pronta para o uso."])
		}

        // destrói o cronômetro
        with (obj_cronometer) instance_destroy()
    }
   
    obj_cronometer.on_count_fail = function () {

        create_textbox(x + sprite_width, y,
            ["Você cronometrou o tempo errado. Tente novamente"])
        with (obj_cronometer) instance_destroy()
    }
	

}