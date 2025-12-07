//@function pass_into_the_bottles()
//@description passa o meio desidratado ao frasco
function pass_into_the_bottle(){
	
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
	            create_textbox(_glass_jar.x, _glass_jar.y, ["Esta não é a quantia correta de g. Tente novamente."]);
	        }
		}
		get_input(x+45, y-25, "Quantidade de g", cb);
		contem_meio = true
		
	}	
}




