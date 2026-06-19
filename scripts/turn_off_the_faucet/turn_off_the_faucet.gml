//@description liga a torneira
function turn_off_the_faucet(){
	with(global.selected){
		if(sprite_index == s_sink_faucet_2){
			sprite_index = s_sink_faucet
			options = []
		}	
	}
	
	with(obj_acetic_acid){
		canPourAceticAcid = true 
	}
}

