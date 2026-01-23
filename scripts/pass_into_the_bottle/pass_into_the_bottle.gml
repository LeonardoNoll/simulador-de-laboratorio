//@function pass_into_the_bottles()
//@description passa o meio desidratado ao frasco
function pass_into_the_bottle(){
	
	// para a room do experimento: preparação de meios de cultura em caldo
	if(room == rm_preparacao_de_meios_de_cultura_em_caldo){
		if(obj_glass_jar_with_lid.name != "BHI caldo" && obj_glass_jar_with_lid.name != "bhi caldo"){
			create_textbox(x, y, ["Este frasco não foi identificado com o nome correto, você deve identificar novamente."])
		}else{	
			var cb = function(_text) {
				// verifica a posição do frasco de vidro
				var _glass_jar = instance_nearest(x, y, obj_glass_jar_with_lid)
				//verifica se o valor está correto
		        if (string_digits(_text) == 37) {
					_glass_jar.sprite_index = s_glass_bhi // muda a sprite (frasco com o meio desidratado)
					_glass_jar.name = "frasco de vidro com 37g de meio desidratado" // muda o nome
		        } else {
					// mensagem de erro
		            create_textbox(_glass_jar.x, _glass_jar.y, ["Esta não é a quantia correta de g. Tente novamente."])
		        }
			}
			get_input(x+33, y-25, "Quantidade de g", cb)
			contem_meio = true
		
		}	
	
	// para a room do experimento: preparação de meios de cultura em ágar
	}else if(room == rm_preparacao_de_meios_de_cultura_em_agar){
		if(obj_glass_jar_with_lid.name != "BHI sangue" && obj_glass_jar_with_lid.name != "bhi sangue"){
			create_textbox(x, y, ["Este frasco não foi identificado com o nome correto, você deve identificar novamente."])
		}else{	
			var cb = function(_text) {
				// verifica a posição do frasco de vidro
				var _glass_jar = instance_nearest(x, y, obj_glass_jar_with_lid)
				//verifica se o valor está correto
		        if (string_digits(_text) == 52) {
					_glass_jar.sprite_index = s_glass_agar // muda a sprite (frasco com o meio desidratado)
					_glass_jar.name = "frasco de vidro com 52g de meio desidratado" // muda o nome
		        } else {
					// mensagem de erro
		            create_textbox(_glass_jar.x, _glass_jar.y, ["Esta não é a quantia correta de g. Tente novamente."])
		        }
			}
			get_input(x+33, y-25, "Quantidade de g", cb)
			contem_meio = true
		
		}
		
	}
	
	
	
	
	
	
	
	/*if(obj_glass_jar_with_lid.name != "BHI caldo" && obj_glass_jar_with_lid.name != "bhi caldo"){
		create_textbox(x, y, ["Este frasco não foi identificado com o nome correto, você deve identificar novamente."])
	}else{	
		var cb = function(_text) {
			// verifica a posição do frasco de vidro
			var _glass_jar = instance_nearest(x, y, obj_glass_jar_with_lid)
			//verifica se o valor está correto
	        if (string_digits(_text) == 37) {
				_glass_jar.sprite_index = s_glass_bhi // muda a sprite (frasco com o meio desidratado)
				_glass_jar.name = "frasco de vidro com 37g de meio desidratado" // muda o nome
	        } else {
				// mensagem de erro
	            create_textbox(_glass_jar.x, _glass_jar.y, ["Esta não é a quantia correta de g. Tente novamente."])
	        }
		}
		get_input(x+33, y-25, "Quantidade de g", cb)
		contem_meio = true
		
	}	*/
}




