//@description tira o produto do ovo
function rinse_off(_sprite){
	
	// verifica qual é a sprite
	switch(_sprite){
	case s_egg_with_DF:
		sprite_index = s_egg_DF
		break
		
	case s_egg_with_FG:
		sprite_index = s_egg_FG
		break
		
	case s_egg_with_SF:
		sprite_index = s_egg_SF
		break
	}
	
	with(obj_acetic_acid){
		can_pour_acetic_acid = true 
	}
}