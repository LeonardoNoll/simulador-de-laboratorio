function get_mls_experiment_4() {
	var _allowed_sources = [
		obj_solucao_amido, 
		obj_test_tube_experiment_4, 
		obj_falcon_tube
	];

	var _source = instance_place(x, y, _allowed_sources);

	if (_source == noone) {
		return;
	}

	var _callback = function(_text, _captured_source) {
		var _mls = real(string_digits(_text));

		if (!is_numeric(_mls)) {
			create_textbox(x, y, "Você não digitou um número");
			return;
		}

		if(_mls > 10) {
			// TOOD: Criar um arquivo para os macros
			create_textbox(x, y, "Esta pipeta não suporta esta quantia de ml");
			return;
		}

		if (instance_exists(_captured_source)) {
			content_id = _captured_source.content_id;
			ml = _mls;
			on_release = experiment_4_on_release_parser
		}
	};

	get_input(x, y, "Mililitros a coletar", _callback, _source);
}
