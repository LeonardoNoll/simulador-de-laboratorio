function turn_on_UV(){

	// muda a sprite 
	with(global.selected){
		if(object_index == obj_laminar_flow_hood){
			sprite_index = s_laminar_flow_hood_UV
		}
	} 
	
	// verifica se o cronômetro existe 
	if (instance_exists(obj_cronometer)) {
        return
    }

    var _cronometer = instance_create_layer(
        room_width - 190, 120, "GUI", obj_cronometer
    )

    _cronometer.on_count_sucess = function() {

        create_textbox(x + sprite_width, y,
		
            ["A capela de fluxo laminar já está pronta para o uso."])
			
		// permite que a placa de petri seja posicionada na capela de fluxo laminar 	
		with (obj_laminar_flow_hood) {
	        laminar_flow_hood_is_ready = true
	    }
	
        // destrói o cronômetro
        with (obj_cronometer) instance_destroy()
    }
   
    _cronometer.on_count_fail = function () {

        create_textbox(x + sprite_width, y,
            ["Você cronometrou o tempo errado. Tente novamente"])
        with (obj_cronometer) instance_destroy()
    }
	
	

}