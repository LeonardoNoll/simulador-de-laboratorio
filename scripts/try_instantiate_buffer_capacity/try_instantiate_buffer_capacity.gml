function try_instantiate_buffer_capacity(){
	with(obj_notes_table) {
		if(instance_exists(obj_buffer_capacity)) return
	
		var _texts = obj_btn_notes_table.texts
		var _is_notes_table_correct = _texts[0] = "7" &&
			_texts[1] = "7" &&
			_texts[2] = "1" &&
			_texts[3] = "2" &&
			_texts[4] != "0" && //NOTE: talvez mudar essa checagem
			_texts[5] = "2" &&
			_texts[6] = "2" 
		
		if(_is_notes_table_correct == false) {
			instance_destroy(obj_buffer_capacity)
			return
		}
	
		for (var i = 0; i < instance_number(obj_test_tube); i++) {
			var _curr_test_tube = instance_find(obj_test_tube, i)
			var _is_test_tube_ready_for_answer = _curr_test_tube.content == "HCl + Saliva estimulada" && _curr_test_tube.ph >= 4
		
			if (_is_test_tube_ready_for_answer) {
				instance_create_depth(x, y+margin_top + cell_height*3, depth-1, obj_buffer_capacity)
				return
			}
		}
	}
}