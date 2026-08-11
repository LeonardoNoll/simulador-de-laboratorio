//@description aplica o produto na casca do ovo
function apply_product(_product){
	
	var _egg = instance_nearest(x, y, obj_egg)
	
	if(_egg.sprite_index == s_egg){
		create_textbox(_egg.x, _egg.y, "Você precisa fazer a marcação.")
		return 
	}else if(_egg.sprite_index == s_marked_egg){
		create_textbox(_egg.x, _egg.y, "Antes de aplicar o produto, você precisa identificar o ovo.")
		return
	}
	
	// verifica se o ovo já recebeu produto
	if(_egg.has_product){  
        return
    }
	
	// verifica qual é o produto que vai ser aplicado, e então verifica se é o ovo correto
	switch(_product){
	
		case "fluoridated gel":
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
		
		case "toothpaste with fluoride":
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
	
	// verifica se os 3 ovos estão com os produtos 
	if(global.eggs == 3){
		cronometer()
		with(obj_sink_faucet){
			options = [OPTIONS.ABRIR_TORNEIRA]
		} 
	}
	
}