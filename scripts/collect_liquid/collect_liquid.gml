function collect_liquid() {
	var _pipette = id;
	var _allowed_sources = scale_on_contact_list;

	var _source = instance_place(x, y, _allowed_sources);

	if (_source == noone) {
		return;
	}
	
	// Validação de segurança para propriedades que podem não existir em todos os objetos
	var _source_content = variable_instance_exists(_source, "content") ? _source.content : "";
	var _source_ph = variable_instance_exists(_source, "ph") ? _source.ph : 0;
	
	// Validação de reuso de pipeta
	if(used != "" && used != _source_content && _source_content != "") {
		create_textbox(x, y, ["Você não pode utilzar em mais de um líquido a mesma pipeta. Troque a pipeta por uma nova."])
		return
	}
	
	// Validação de fonte vazia (se o objeto tiver a propriedade content)
	if(variable_instance_exists(_source, "content") && _source.content == "") {
		create_textbox(x,y, ["Você não pode coletar o líquido de um recipiente vazio."])	
		return
	}

	var _callback = function(_text, _captured_source) {
		var _mls = real(string_digits(_text));

		if (!is_numeric(_mls)) {
			create_textbox(x, y, "Você não digitou um número");
			return;
		}

		if(_mls > max_ml) {
			create_textbox(x, y, "Esta pipeta não suporta esta quantia de ml");
			return;
		}

		if (instance_exists(_captured_source)) {
			// Sucesso na coleta
			ph = variable_instance_exists(_captured_source, "ph") ? _captured_source.ph : 0;
			content = variable_instance_exists(_captured_source, "content") ? _captured_source.content : "líquido";
			content_id = variable_instance_exists(_captured_source, "content_id") ? _captured_source.content_id : "";
			used = content;
			ml = _mls;
			name = "Pipeta com " + string(_mls) + "ml(s) de " + content;
			
			scale_pulse(self, 1.5, 0.15);
			
			if (room == rm_4_atividade_enzimatica_atividade_salivar) {
				scale_on_contact_list = [obj_test_tube_experiment_4, obj_erlenmeyer_experiment_4];
				on_release = experiment_4_on_release_parser;
			} else {
				scale_on_contact_list = [obj_test_tube_experiment_3, obj_test_tube_experiment_4];
				on_release = function() {
					pass_liquid_to_test_tube_3(ml, self, ph == 2 ? s_test_tube_HCl : s_test_tube_water);
				}
			}
		}
	};

	get_input(x, y, "Mililitros a coletar", _callback, _source);
}