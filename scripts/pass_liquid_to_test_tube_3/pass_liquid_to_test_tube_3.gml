/// @function pass_liquid_to_test_tube_3()
/// @description Transfere o conteúdo da pipeta para um tubo de ensaio do experimento 3,
///              usando o mesmo pipeline de structs (LiquidDef/LiquidInstance) do experimento 4.

function pass_liquid_to_test_tube_3(){
	if(!place_meeting(x,y, obj_test_tube_experiment_3)) return

	var _test_tube = instance_nearest(x,y,obj_test_tube_experiment_3)
	if(_test_tube.closed) {
		create_textbox(x, y, ["Este tubo de teste está fechado"])
		return
	}

	var _liquid_to_pass = ensure_liquid_instance(id);
	var _result = transfer_liquid_to_test_tube(_liquid_to_pass, _test_tube, global.liquids_experiment_3, global.test_tubes_experiment_3, "tubo_teste", ml);

	if (!_result.success) {
		create_textbox(x, y, ["Esta ação não é permitida. Faça as transferências de acordo com o roteiro"])
		return
	}

	_test_tube.content_id = _result.resulting_liquid_id;
	_test_tube.content = _result.resulting_liquid;
	_test_tube.name = "Tubo de teste com " + _test_tube.content.name;
	scale_pulse(_test_tube, 1.5, 0.15)

	// Resetar estado da pipeta
	var _is10ml = object_index == obj_pipette_10ml
	sprite_index = _is10ml ? s_pipette_10ml_with_pear : s_pipette_5ml_with_pear
	name = _is10ml ? "Pipeta 10ml" : "Pipeta 5m"
	content = ""
	content_id = ""
	ml = 0
	scale_on_contact_list = [obj_25ml_becker]
	on_release = collect_liquid
}
