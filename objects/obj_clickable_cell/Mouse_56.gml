if(median(x, x + width, mouse_x) == mouse_x
	&& median(y, y + height, mouse_y) == mouse_y) {
		var _test_tube = noone
		for (var i = 0; i < instance_number(obj_test_tube_experiment_3); i++) {
			var _curr_test_tube = instance_find(obj_test_tube_experiment_3, i)
			if (_curr_test_tube.content == "HCl + Saliva estimulada") {
				_test_tube = _curr_test_tube
			}
		}
	
		if(_test_tube != noone) {
			var _final_ph = _test_tube.ph
			var _right_answer = ""
			var _user_answer = text

			if(_final_ph == 4) _right_answer= "Baixa"
			else if (_final_ph == 5) _right_answer = "Intermediária"
			else if (_final_ph == 6) _right_answer = "Boa"

			if _user_answer == _right_answer {
				room_goto(rm_parabens)
			} else {
				create_textbox(x,y, ["Resposta incorreta. Verifique suas anotações e a referência e tente novamente."])
			}
		}	
}