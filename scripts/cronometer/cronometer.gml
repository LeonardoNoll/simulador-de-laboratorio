/// @description cria o cronômetro e verifica se o tempo está correto

function cronometer(){
	
		var _cronometer
	
		// verifica se o cronômetro já existe
		if (instance_exists(obj_cronometer)) {
	        return
	    }
	
		// cria o cronômetro 
		if(room == rm_acao_do_fluoreto_na_casca_do_ovo){
			_cronometer = instance_create_layer(room_width - 1180, 60, "GUI", obj_cronometer)
		}else{
			 _cronometer = instance_create_layer(room_width - 190, 120, "GUI", obj_cronometer)
		}
		
		// sucesso
	    _cronometer.on_count_sucess = function() {
			
			// verifica o que precisa ser feito em cada room 
			switch(room){
			
				case rm_acao_do_fluoreto_na_casca_do_ovo:
					create_textbox(x + sprite_width, y,"Você já pode remover o produto.")
					break
					
				case rm_preparacao_de_meios_de_cultura_em_agar:
				case rm_preparacao_de_meios_de_cultura_em_caldo:
					create_textbox(x + sprite_width, y,
			            "O frasco já pode ser retirado da autoclave.")
			        with (obj_autoclave) {
			            options = [OPTIONS.REMOVER_FRASCO]
			        }
					break				
			}
			
			/* verifica o que precisa ser feito em cada room 
			if(room == rm_acao_do_fluoreto_na_casca_do_ovo){
		        create_textbox(x + sprite_width, y,"Você já pode remover o produto.")
				
			}else if(room == rm_preparacao_de_meios_de_cultura_em_caldo || room == rm_preparacao_de_meios_de_cultura_em_agar){
				create_textbox(x + sprite_width, y,
		            "O frasco já pode ser retirado da autoclave.")
		        with (obj_autoclave) {
		            options = [OPTIONS.REMOVER_FRASCO]
		        }
			}*/
			
	        // destrói o cronômetro
	        with (obj_cronometer) instance_destroy()
	    }
   
		// tempo errado 
	    _cronometer.on_count_fail = function () {
	        create_textbox(x + sprite_width, y,
	            "Você cronometrou o tempo errado. Tente novamente")
	        with (obj_cronometer) instance_destroy()
	    }
	}
	
	
	
	
	

