// posiciona as placas de petri na capela de fluxo laminar 
function laminar_flow_hood_with_petri_dishes(_hood){

		// verifica se já tem uma placa de petri na capela de fluxo laminar 
		if(_hood.sprite_index == s_laminar_flow_hood_petri){
			// adiciona a segunda placa de petri na capela de fluxo laminar 
			_hood.sprite_index = s_laminar_flow_hood_petri_2
			instance_destroy()
		}else{
			_hood.sprite_index = s_laminar_flow_hood_petri
			instance_destroy()
		}


}