on_release = function(){
	// verifica se pode remover o produto 
	if(can_rinse){
		// verifica se a torneira está ligada 
		if(obj_sink_faucet.sprite_index == s_sink_faucet_2){
			// passa a sprite atual para verificar qual produto foi aplicado
			rinse_off(sprite_index)
		}
	}else{
		create_textbox(x + sprite_width, y, "Você precisa esperar o produto agir durante 60 minutos.")
	}
}

