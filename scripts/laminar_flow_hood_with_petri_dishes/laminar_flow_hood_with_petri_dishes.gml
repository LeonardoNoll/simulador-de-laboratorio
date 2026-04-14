// posiciona as placas de petri na capela de fluxo laminar 
function laminar_flow_hood_with_petri_dishes(_hood){

		// verifica se já tem uma placa de petri na capela de fluxo laminar 
		if(_hood.sprite_index == s_laminar_flow_hood_petri){
			// adiciona a segunda placa de petri na capela de fluxo laminar 
			_hood.sprite_index = s_laminar_flow_hood_petri_2
		}else{
			_hood.sprite_index = s_laminar_flow_hood_petri
		}
	
	// permite que o frasco seja posicionado dentro da capela de fluxo laminar 
	with(obj_glass_jar_with_lid){
		ready_for_laminar_flow_hood = true
	}
	
	instance_destroy()

}