// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function verify_answer(_base, _maximo){
	_ml_min = global.selected.ml/5
	if(_base < _ml_min && _ml_min <= _maximo){
		room_goto(rm_parabens)
	} else {
		create_textbox(mouse_x+10, global.selected.y, ["Resposta incorreta. Consulte a tabela de referência e tente novamente."])
	}
}