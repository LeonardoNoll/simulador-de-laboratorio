var _key = instance_nearest(x,y, obj_capacity_select)
var _test_tube = noone
for (var i = 0; i < instance_number(obj_test_tube); i++) {
	var _curr_test_tube = instance_find(obj_test_tube, i)
	if (_curr_test_tube.content == "HCl + Saliva estimulada") {
		_test_tube = _curr_test_tube
	}
}
	

if(_key != noone && _test_tube != noone) {
	var _final_ph = _test_tube.ph
	var _right_answer = ""
	var _user_answer = _key.text

	if(_final_ph<= 4.5) _right_answer= "Baixa"
	else if (_final_ph<= 5.5) _right_answer = "Intermediária"
	else _right_answer = "Boa"

	if _user_answer == _right_answer {
		room_goto(rm_parabens)
	} else {
		criar_textbox(x,y, ["Resposta incorreta " + string(_final_ph)])
	}
}