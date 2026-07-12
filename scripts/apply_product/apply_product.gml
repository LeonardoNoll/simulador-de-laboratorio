//@description aplica o produto na casca do ovo
function apply_product(_product){
	
	var _egg = instance_nearest(x, y, obj_egg)

    // verifica se o ovo já recebeu produto
    if(_egg.has_product){
        return
    }
	
	if(_egg.sprite_index == s_marked_egg){
		create_textbox(_egg.x, _egg.y, "Primeiro você precisa identificar o ovo.")
		return
	}
	
	// verifica qual é o produto que vai ser aplicado, e então verifica se é o ovo correto
	switch(_product){
	
		case "fluoridated_gel":
			if(_egg.sprite_index != s_egg_FG && _egg.sprite_index != s_egg_with_FG){
				create_textbox(_egg.x, _egg.y, "Este não é o ovo correto.")
			}else{
				_egg.sprite_index = s_egg_with_FG	
				_egg.name = "Ovo com gel fluoretado"
				_egg.has_product = true
				global.eggs++
			}
			break
		
		case "toothpaste":
			if(_egg.sprite_index != s_egg_SF && _egg.sprite_index != s_egg_with_SF){
				create_textbox(_egg.x, _egg.y, "Este não é o ovo correto.")
			}else{
				_egg.sprite_index = s_egg_with_SF
				_egg.name = "Ovo com dentifrício sem flúor"
				_egg.has_product = true
				global.eggs++
			}
			break
		
		case "toothpaste_with_fluoride":
			if(_egg.sprite_index != s_egg_DF && _egg.sprite_index != s_egg_with_DF){
				create_textbox(_egg.x, _egg.y, "Este não é o ovo correto.")
			}else{
				_egg.sprite_index = s_egg_with_DF
				_egg.name = "Ovo com dentifrício fluoretado"
				_egg.has_product = true
				global.eggs++
			}
			break
	}
	
	if(global.eggs == 3){
		
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
			
			// permite abrir a torneira somente se já passou o tempo
			with(obj_sink_faucet) options = [OPTIONS.ABRIR_TORNEIRA] 
			
	    }
   
	    _cronometer.on_count_fail = function () {
	        create_textbox(x + sprite_width, y,
	            "Você cronometrou o tempo errado. Tente novamente")
	        with (obj_cronometer) instance_destroy()
	    }
	}
	
}