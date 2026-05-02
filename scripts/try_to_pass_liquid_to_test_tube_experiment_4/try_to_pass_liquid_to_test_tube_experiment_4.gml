function try_to_pass_liquid_to_test_tube_experiment_4() {
	var _test_tube = instance_nearest(x, y, obj_test_tube_experiment_4);

	if (!place_meeting(x, y, _test_tube) || _test_tube.closed) {
		return;
	}

	var _context = {
		test_tube: _test_tube,
		liquid_id: content_id,
		liquids: global.liquids_experiment_4,
		test_tubes: global.test_tubes_experiment_4,
	};

	var _callback = function(_val, _args) {
		try {
			var _ml = real(string_digits(_val));
			var _result = transfer_liquid_to_test_tube(
				_args.liquid_id,
				_args.test_tube,
				_args.liquids,
				_args.test_tubes,
				"",
				_ml
			);

			if (!_result.success) {
				show_debug_message(
					"Erro na transferência: " + string(_result.error_reason)
				);
				return;
			}

			_args.test_tube.content_id = _result.resulting_liquid_id;
			_args.test_tube.content = _result.resulting_liquid;
			show_debug_message(_args.test_tube.content);
		} catch (e) {
			show_debug_message(string_concat("Error: ", e));
		}
	};

	get_input(x, y, "Mililitros a misturar", _callback, _context);
}
