function get_mls(){
	// Check collision
	var _hitlist = [obj_25ml_becker]
	if(place_meeting(x,y, _hitlist)) {	
		var _others = ds_list_create()
		instance_place_list(x,y, _hitlist, _others, true)
		var _other = ds_list_find_value(_others, 0)
	
		if(used != "" && used !=  _other.content) {
			criar_textbox(x, y, ["Você não pode utilzar em mais de um líquido a mesma pipeta. Troque a pipeta por uma nova."])
			return
		}
		if(_other.content == "") {
			criar_textbox(x,y, ["Você não pode coletar o líquido de um recipiente vazio."])	
			return
		}
		take_ml_input(_other)

		ds_list_destroy(_others)
	}
}

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
					criar_textbox(mouse_x, mouse_y, _warning_message)
					return
				}
			
				// Sucess case
				ph = _other.ph
				content = _other.content
				used = _other.content
				ml = _mls
				name = "Pipeta com " + string(_mls) + "ml(s) de " + content
				scale_on_contact_list = [obj_test_tube]
				on_release = function() {
					if(place_meeting(x,y, obj_test_tube)) {
						pass_liquid_to_test_tube(ml, self, ph == 2 ? s_test_tube_HCl : s_test_tube_water)
					}
				}
				scale_pulse(self, 1.5, 0.15)
				return
			} catch(error){
				// Não digitou um número
				_warning_message = ["Você deve digitar um número para realizar esta ação!"]
			}
		}, _other)
}

function is_ml_amount_correct(_mls, _other) {
	var _warning_message = ["Esta não é a quantia correta de mls. Consulte o material e tente novamente."]
	if(_other.content = "HCl" && _mls != 6) return _warning_message
	else if(_other.content = "Saliva estimulada" && _mls != 2) return _warning_message
	else if(_other.content = "Água destilada" && _mls != 2) return _warning_message
	else return ""
}

function ml_capacity_violated(_mls) {
	if(_mls > (object_index == obj_pipett_10ml ? 10 : 5)) {
		return ["Esta pipeta não suporta essa quantia de mls!"]
	}
	return ""
}