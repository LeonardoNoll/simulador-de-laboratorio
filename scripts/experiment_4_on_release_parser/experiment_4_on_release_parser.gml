function experiment_4_on_release_parser(){
	if(place_meeting(x,y, obj_test_tube_experiment_4)) {
		try_to_pass_liquid_to_test_tube_experiment_4()
		return;
	}
	
	if(place_meeting(x,y, obj_erlenmeyer_experiment_4)) {
		var _erlenmeyer = instance_nearest(x,y ,obj_erlenmeyer_experiment_4)
		
		// Coleta informações do líquido na pipeta/origem
		var _incoming_id = variable_instance_exists(id, "content") && is_struct(content) ? content.id : content_id;
		var _incoming_ml = variable_instance_exists(id, "ml") ? ml : 0;

		// Caso 1: Amido sendo adicionado (50ml)
		if(_incoming_id == "starch" && _incoming_ml == 50) {
			_erlenmeyer.content = new LiquidInstance(global.liquids_experiment_4.starch, {
				minutes_passed: 0,
				saliva_added: false
			});
			_erlenmeyer.content_id = "starch";
			
			// Esvazia a origem se for pipeta/frasco
			if (variable_instance_exists(id, "ml")) {
				ml = 0;
				content = undefined;
				content_id = "";
				restore_pipette_collect_mode(id);
			}
			return;
		}
		
		// Caso 2: Saliva diluída sendo adicionada (1ml)
		if (_incoming_id == "distilled_saliva" && _incoming_ml == 1) {
			if (is_struct(_erlenmeyer.content) && _erlenmeyer.content.id == "starch") {
				_erlenmeyer.content.state.saliva_added = true;
				// O tempo de reação começa agora
				_erlenmeyer.content.state.minutes_passed = 0; 
				create_textbox(x, y, "Saliva adicionada ao amido. A reação de hidrólise começou.");
				
				// Opcional: mudar nome para indicar mistura
				_erlenmeyer.content.name = "Amido + Saliva";
				
				// Esvazia a origem
				if (variable_instance_exists(id, "ml")) {
					ml = 0;
					content = undefined;
					content_id = "";
					restore_pipette_collect_mode(id);
				}
			} else {
				create_textbox(x, y, "O Erlenmeyer deve conter amido antes de adicionar a saliva.");
			}
			return;
		}

		create_textbox(x, y, "Esta não é a quantia ou o líquido correto para o Erlenmeyer.");
	}
}