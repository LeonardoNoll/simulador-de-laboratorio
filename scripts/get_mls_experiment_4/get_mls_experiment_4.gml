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

		content_id = obj_solucao_amido.content_id;
		ml = _mls;
	};

	get_input(x, y, "Mililitros a coletar", _callback);
}
