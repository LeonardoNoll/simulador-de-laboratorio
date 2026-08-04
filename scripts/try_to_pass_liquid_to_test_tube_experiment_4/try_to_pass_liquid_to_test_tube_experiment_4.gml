function try_to_pass_liquid_to_test_tube_experiment_4() {
	var _test_tube = instance_place(x, y, obj_test_tube_experiment_4);

	if (!instance_exists(_test_tube) || _test_tube.closed) {
		return;
	}

	// Resolve o líquido para uma LiquidInstance se necessário
	var _liquid_to_pass = ensure_liquid_instance(id);

	var _liquids = variable_struct_exists(global, "liquids_experiment_4") ? global.liquids_experiment_4 : undefined;
	var _test_tubes = variable_struct_exists(global, "test_tubes_experiment_4") ? global.test_tubes_experiment_4 : undefined;

	var _context = {
		source: id,
		test_tube: _test_tube,
		liquid: _liquid_to_pass,
		liquids: _liquids,
		test_tubes: _test_tubes,
	};

	var _callback = function(_val, _args) {
		try {
			var _ml = real(string_digits(_val));
			var _result = transfer_liquid_to_test_tube(
				_args.liquid,
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
			
			// Se a origem for uma pipeta, esvazia após a transferência
			if (variable_instance_exists(_args.source, "ml")) {
				_args.source.ml = 0;
				_args.source.content = undefined;
				_args.source.content_id = "";
				
				if (variable_instance_exists(_args.source, "max_ml")) {
					var _is10 = _args.source.max_ml == 10;
					_args.source.name = _is10 ? "Pipeta 10ml" : "Pipeta 5ml";
				}
			}
			
			show_debug_message("Transferência concluída: " + string(_args.test_tube.content_id));
		} catch (e) {
			show_debug_message(string_concat("Error: ", e));
		}
	};

	get_input(x, y, "Mililitros a misturar", _callback, _context);
}
