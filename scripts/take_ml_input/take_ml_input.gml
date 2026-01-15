function take_ml_input(_other) {
		get_input(mouse_x,mouse_y,"Mls a coletar", function(_text, _other) {
			var _warning_message = ""
			try {
				var _mls = real(string_digits(_text))

				// Caso puxou muitos mls
				if(_warning_message == "") {
					_warning_message = ml_capacity_violated(_mls)
				}
			
				// Caso puxou a quantia errada de mls de um liquido
				if(_warning_message == "") {
					_warning_message = is_ml_amount_correct(real(string_digits(_text)), _other)
				}
			
				// Show message if one exists
				if(_warning_message != "") {
					create_textbox(mouse_x, mouse_y, _warning_message)
					return
				}
			
				// Sucess case
				ph = _other.ph
				content = _other.content
				used = _other.content
				ml = _mls
				name = "Pipeta com " + string(_mls) + "ml(s) de " + content
				scale_on_contact_list = [obj_test_tube_experiment_3, obj_test_tube_experiment_4]
				on_release = function() {
						pass_liquid_to_test_tube(ml, self, ph == 2 ? s_test_tube_HCl : s_test_tube_water)
				}
				scale_pulse(self, 1.5, 0.15)
				return
			} catch(error){
				_warning_message = ["Você deve digitar um número para realizar esta ação!"]
			}
		}, _other)
}