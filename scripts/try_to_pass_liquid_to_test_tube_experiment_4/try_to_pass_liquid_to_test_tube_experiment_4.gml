function try_to_pass_liquid_to_test_tube_experiment_4(_ml) {
	if (argument_count < 1) _ml = undefined;

	var _test_tube = instance_nearest(x, y, obj_test_tube_experiment_4);
	if (!place_meeting(x, y, _test_tube)) return;

	var _result = transfer_liquid_to_test_tube(
		content_id,
		_test_tube,
		global.liquids_experiment_4,
		global.test_tubes_experiment_4,
		"",
		_ml
	);

	if (!_result.success) {
		show_debug_message(_result.error_reason);
		return;
	}

	_test_tube.content = _result.resulting_liquid;
}
