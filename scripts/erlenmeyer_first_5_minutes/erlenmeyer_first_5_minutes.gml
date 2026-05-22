function erlenmeyer_first_5_minutes(){
	var expected_water_bath_temperature = 37
	var _erlenmeyer = instance_nearest(x,y, obj_erlenmeyer_experiment_4)
	var _water_bath = instance_nearest(x,y, obj_water_bath)
	
	var _objects_are_missing = (
		_erlenmeyer == noone
        || _water_bath == noone
        || _water_bath.erlenmeyer == noone
	)
	
    if (_objects_are_missing) return

	if(_water_bath.temperature != expected_water_bath_temperature) {
		create_textbox(x,y, "Vocễ não usou a temperatura correta para o banho Maria. Consulte o roteiro e tente novamente.")
	}
	
	scale_pulse(_erlenmeyer,  1.5, 0.15)
	
	if (is_struct(_erlenmeyer.content) && variable_struct_exists(_erlenmeyer.content, "state")) {
		_erlenmeyer.content.state.minutes_passed = 5
	}
	
	var _chronometer_btn = instance_nearest(x,y, obj_btn_cronometer)
	var _chronometer = instance_nearest(x,y,obj_cronometer)
	_chronometer.on_count_sucess = erlenmeyer_one_more_minute
	_chronometer_btn.on_count_sucess = erlenmeyer_one_more_minute
	_chronometer.expected_minutes =	1
	_chronometer_btn.expected_minutes =	1
}