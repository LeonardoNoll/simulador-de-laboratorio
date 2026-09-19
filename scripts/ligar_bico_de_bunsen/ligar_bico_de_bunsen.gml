function ligar_bico_de_bunsen(){
	with global.selected{
		sprite_index = s_bunsen_on
		options = [OPTIONS.DESLIGAR_BUNSEN]
		name = "Bico de bunsen ligado"
		ligado = true
	}
}