//@description posiciona o ovo dentro do béquer 
function place_egg_in_becker(_becker){

    // verifica se já possui ácido acético 
    if(_becker.sprite_index == s_becker_8){
        create_textbox(x, y, "Você precisa adicionar o ácido acético ao béquer.")
        return false
    }

    // verifica se o béquer já está em uso
    if(_becker.sprite_index != s_becker_8_2){
        create_textbox(x, y, "Este béquer já está em uso.")
        return false
    }

    // verifica qual é a sprite
    switch(sprite_index){
        case s_egg_DF:
            _becker.sprite_index = s_becker_with_egg_DF
			 global.eggs_in_becker++
        break

        case s_egg_SF:
            _becker.sprite_index = s_becker_with_egg_SF
			 global.eggs_in_becker++
        break

        case s_egg_FG:
            _becker.sprite_index = s_becker_with_egg_GF
			 global.eggs_in_becker++
        break
    }

    // destrói o ovo
    instance_destroy()

    // verifica se todos os béquers foram preenchidos
    if(global.eggs_in_becker >= 3){
        room_goto(rm_acao_do_fluoreto_2)
        return true
    }

    return true
}



