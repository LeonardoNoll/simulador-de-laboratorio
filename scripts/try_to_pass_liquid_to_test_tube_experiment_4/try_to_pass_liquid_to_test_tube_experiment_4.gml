function try_to_pass_liquid_to_test_tube_experiment_4() {
	var _test_tube = instance_nearest(x,y, obj_test_tube_experiment_4)
	var _self_content = struct_get(global.liquids_experiment_4, content_id)
	
	if(!place_meeting(x,y,_test_tube)) return
	
	if(is_marked_correctly(_test_tube, _self_content)) {
		show_debug_message("marcado certo")
		show_debug_message(_test_tube.name)
		show_debug_message(_self_content.name)
	} else {
			show_debug_message("marcado errado")
	}
	
	if(can_mix(_self_content, _test_tube.content)) {
		var _result_id = _self_content.mix_results[_test_tube.liquid.id];
		_test_tube.content = global.liquids_experiment_4[_result_id]
		return
	}
}