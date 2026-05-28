on_release = function(){
	// verifica se a torneira está ligada 
	if(obj_sink_faucet.sprite_index == s_sink_faucet_2){
		// passa a sprite atual para verificar qual produto foi aplicado
		rinse_off(sprite_index)
	}
}

