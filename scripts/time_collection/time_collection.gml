function time_collection() {
	if(instance_exists(obj_parafilm)) {
		create_textbox(mouse_x, mouse_y, ["Antes de cronometrar a coleta, de ao paciente o Parafilm para estimular a saliva."])
	} else {
	    with (obj_chronometer) {
			counting_down = true;
			if (!array_contains(options, OPTIONS.ACELERAR_CONTAGEM)) {
				array_push(options, OPTIONS.ACELERAR_CONTAGEM);
			}
	    }
		
	    // Verifica se já existe um sistema de partículas
	    if (global.particle_sys == noone || !part_system_exists(global.particle_sys)) {
	        with (obj_sample_bottle) {
	            global.particle_sys = part_system_create_layer("Instances", 0, ps_saliva); 
	            part_system_position(global.particle_sys, x+5, y - 25);
	            show_debug_message("Sistema de partículas criado.");
	        }
	    } else {
	        show_debug_message("Sistema de partículas já existe.");
	    }
	}
}
