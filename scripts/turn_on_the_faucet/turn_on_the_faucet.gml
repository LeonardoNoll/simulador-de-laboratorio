//@description liga a torneira
function turn_on_the_faucet(){
	with(global.selected){
		if(object_index == obj_sink_faucet){
			sprite_index = s_sink_faucet_2
			options = [OPTIONS.FECHAR_TORNEIRA]
		}
	}
}

