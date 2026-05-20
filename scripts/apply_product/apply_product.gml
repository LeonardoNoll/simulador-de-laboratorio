function apply_product(_product){
	
	// verifica qual é o produto que vai ser aplicado, e então verifica se é o ovo correto
	switch(_product){
	
		case "fluoridated_gel":
			if(other.sprite_index != s_egg_FG && other.sprite_index != s_egg_with_FG){
				create_textbox(other.x, other.y, "Este não é o ovo correto.")
			}else{
				other.sprite_index = s_egg_with_FG	
				other.name = "Ovo com gel fluoretado"
			}
			break
		
		case "toothpaste":
			if(other.sprite_index != s_egg_SF && other.sprite_index != s_egg_with_SF){
				create_textbox(other.x, other.y, "Este não é o ovo correto.")
			}else{
				other.sprite_index = s_egg_with_SF
				other.name = "Ovo com dentifrício sem flúor"
			}
			break
		
		case "toothpaste_with_fluoride":
			if(other.sprite_index != s_egg_DF && other.sprite_index != s_egg_with_DF){
				create_textbox(other.x, other.y, "Este não é o ovo correto.")
			}else{
				other.sprite_index = s_egg_with_DF
				other.name = "Ovo com dentifrício fluoretado"
			
			}
			break
	}
}