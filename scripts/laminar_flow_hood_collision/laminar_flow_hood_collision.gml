// verifica os objetos que foram levados para a capela de fluxo laminar
function laminar_flow_hood_collision(_hood,_object){
		
	// verifica o tipo do objeto que está sendo levado para a capela de fluxo laminar e incrementa 
	switch(_object.type){
		case "falcon":
			_hood.placed_items.falcon++
			break
		case "permanent_marker":
			_hood.placed_items.permanent_marker++
			break
		case "rack":
			_hood.placed_items.rack++
			break
		case "one_ml_pipette_tip":
			_hood.placed_items.one_ml_pipette_tip++
			break
		case "micropipette":
			_hood.placed_items.micropipette++
			break
		case "phosphate_buffered_saline":
			_hood.placed_items.phosphate_buffered_saline++
			break
	}
	instance_destroy(_object) 
	
	// verifica se todos os objetos necessários já estão na capela de fluxo laminar 
	if( _hood.placed_items.falcon == 5 &&
		_hood.placed_items.permanent_marker == 1 &&
		_hood.placed_items.rack == 1 &&
		_hood.placed_items.one_ml_pipette_tip == 1 &&
		_hood.placed_items.micropipette == 1 &&
		_hood.placed_items.phosphate_buffered_saline == 1){
			room_goto(rm_coleta_de_biofilme_supragengival_2)
		}
}