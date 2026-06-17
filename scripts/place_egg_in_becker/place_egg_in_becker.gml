//@description posiciona o ovo dentro do béquer 
function place_egg_in_becker(_becker){

	// verifica se o béquer já está com o ácido acético
	if(_becker.sprite_index == s_becker_8_2){
		switch (sprite_index){
	        case s_egg_DF:
	            _becker.sprite_index = s_becker_with_egg_DF
				instance_destroy()
	        break

	        case s_egg_SF:
	            _becker.sprite_index = s_becker_with_egg_SF
				instance_destroy()
	        break

	        case s_egg_FG:
	            _becker.sprite_index = s_becker_with_egg_GF
				instance_destroy()
	        break
		}
	}else if(_becker.sprite_index == s_becker_8){
		create_textbox(x, y, "Você precisa adicionar o ácido acético ao béquer.")
	}else{
		create_textbox(x, y, "Este béquer já está em uso.")
	}
	
}