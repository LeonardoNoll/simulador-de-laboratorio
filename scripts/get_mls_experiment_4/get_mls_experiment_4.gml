function get_mls_experiment_4() {
	if (!place_meeting(x, y, obj_solucao_amido)) {
		return;
	}

	var _amido = instance_nearest(x, y, obj_solucao_amido);

	var _callback = function(_text) {
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

		content_id = obj_solucao_amido.content_id;
		ml = _mls;
		on_release = experiment_4_on_release_parser
	};

	get_input(x, y, "Mililitros a coletar", _callback);
}
