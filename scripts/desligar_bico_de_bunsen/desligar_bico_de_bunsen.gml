function desligar_bico_de_bunsen(){
	with global.selected{
		if(ligado == true){
			sprite_index = s_bunsen_off
			options = [OPTIONS.LIGAR_BUNSEN]
			name = "Bico de bunsen"
			ligado = false
		}
	}
}