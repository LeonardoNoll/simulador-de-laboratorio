function apply_product(_product){
	
	// verifica qual é o produto que vai ser aplicado, e então verifica se é o ovo correto
	switch(_product){
	
		case "fluoridated_gel":
			if(other.sprite_index != s_egg_FG && other.sprite_index != s_egg_with_FG){
				create_textbox(other.x, other.y, "Este não é o ovo correto.")
			}else{
				other.sprite_index = s_egg_with_FG	
				other.name = "Ovo com gel fluoretado"
				global.egg += 1
			}
			break
		
		case "toothpaste":
			if(other.sprite_index != s_egg_SF && other.sprite_index != s_egg_with_SF){
				create_textbox(other.x, other.y, "Este não é o ovo correto.")
			}else{
				other.sprite_index = s_egg_with_SF
				other.name = "Ovo com dentifrício sem flúor"
				global.egg +=1
			}
			break
		
		case "toothpaste_with_fluoride":
			if(other.sprite_index != s_egg_DF && other.sprite_index != s_egg_with_DF){
				create_textbox(other.x, other.y, "Este não é o ovo correto.")
			}else{
				other.sprite_index = s_egg_with_DF
				other.name = "Ovo com dentifrício fluoretado"
				global.egg +=1
			}
			break
	}
	
	if(global.egg == 3){
		// verifica se o cronômetro já existe
		if (instance_exists(obj_cronometer)) {
	        return
	    }
	
		// cria o cronômetro 
	    var _cronometer = instance_create_layer(
	       // room_width - 190, 120, "GUI", obj_cronometer
		   room_width - 1180, 60, "GUI", obj_cronometer
	    )

	    _cronometer.on_count_sucess = function() {
	        create_textbox(x + sprite_width, y,
	            "Você já pode remover o produto.")

	        // destrói o cronômetro
	        with (obj_cronometer) instance_destroy()
	    }
   
	    _cronometer.on_count_fail = function () {
	        create_textbox(x + sprite_width, y,
	            "Você cronometrou o tempo errado. Tente novamente")
	        with (obj_cronometer) instance_destroy()
	    }
	
	
	}
	
	
	
}