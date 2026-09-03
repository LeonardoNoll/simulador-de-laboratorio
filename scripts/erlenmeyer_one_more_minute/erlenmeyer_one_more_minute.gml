function erlenmeyer_one_more_minute() {
	var expected_water_bath_temperature = 37;
	var _erlenmeyer = instance_nearest(x, y, obj_erlenmeyer_experiment_4);
	var _water_bath = instance_nearest(x, y, obj_water_bath);

	var _objects_are_missing =
		_erlenmeyer == noone
		|| _water_bath == noone
		|| _water_bath.erlenmeyer == noone;

	if (_objects_are_missing) {
		return;
	}

	if (_water_bath.temperature != expected_water_bath_temperature) {
		create_textbox(
			x,
			y,
			"Vocễ não usou a temperatura correta para o banho Maria. Consulte o roteiro e tente novamente."
		);
	}

	if (is_struct(_erlenmeyer.content) && variable_struct_exists(_erlenmeyer.content, "state")) {
		_erlenmeyer.content.state.minutes_passed += 2;
	}

	scale_pulse(_erlenmeyer, 1.5, 0.15);
}
