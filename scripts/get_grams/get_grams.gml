function get_grams(){
	// verifica colisão
	var _hitlist = [obj_glass_jar_with_lid] 
	
	if(place_meeting(x,y, _hitlist)){
		var _others = ds_list_create()
		instance_place_list(x,y, _hitlist, _others, true)
		var _other = ds_list_find_value(_others, 0)
		
		//verifica se o recipiente está vazio 
		if(_other.content == "") {
			create_textbox(x,y, ["Você não pode coletar o conteúdo de um recipiente vazio."])	
			return
		}
		
		take_ml_input(_other)
		ds_list_destroy(_others)
	}
}

// definir a quantidade de gramas
function take_g_input(_other){
	get_input(mouse_x, mouse_y, "Quantidade de gramas", function(_text, _other){
	
		var _warning_message = ""
		try{
			var _g = real(string_digits(_text))
			if(_warning_message == "") {
					_warning_message = is_ml_amount_correct(real(string_digits(_text)), _other)
			}
			// Sucess case
				content = _other.content
				g = _g
				name = "Frasco com " + string(_g) + "g(s) do meio desidratado" + content
				scale_on_contact_list = [obj_glass_jar_with_lid]
				on_release = function() {
					if(place_meeting(x,y, obj_glass_jar_with_lid)) {
						//pass_into_the_bottle(g)
					}
				}
				scale_pulse(self, 1.5, 0.15)
				return
		
		}catch(error){
			// Não digitou um número
			_warning_message = ["Você deve digitar um número para realizar esta ação!"]
		}
	
	}, _other)
}


/*function take_ml_input(_other) {
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
				scale_on_contact_list = [obj_test_tube_experiment_3]
				on_release = function() {
					if(place_meeting(x,y, obj_test_tube_experiment_3)) {
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
}*/


// verificar se a quantidade está correta
function is_g_amount_correct(_g, _other){
	var _warning_message = ["Essa não é a quantia correta de g. Consulte o material e tente novamente."]
	if(_other.content = "Frasco de caldo BHI" && _mls != 37) return _warning_message
	else return ""
}

