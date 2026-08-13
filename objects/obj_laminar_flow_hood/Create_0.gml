event_inherited()

if(rm_preparacao_de_meios_de_cultura_em_agar){
	needed_EPI = []
}else{
	needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
}

name = "Capela de Fluxo Laminar"

laminar_flow_hood_is_ready = false
uv_off = false

locked = true

if(rm_coleta_de_biofilme_supragengival){
	necessary_items = {
		falcon: 5,
		permanent_marker: 1,
		micropipette: 1,
		rack: 1,
		one_ml_pipette_tip: 1,
		phosphate_buffered_saline : 1
	}
	
	// controla a quantidade de objetos colocados na capela 
	placed_items = {
		falcon: 0,
		permanent_marker: 0,
		micropipette: 0,
		rack: 0,
		one_ml_pipette_tip: 0,
		phosphate_buffered_saline : 0
	
	}

	
}
