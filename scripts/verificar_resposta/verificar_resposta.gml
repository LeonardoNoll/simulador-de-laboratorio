// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function verificar_resposta(_base, _maximo){
	_ml_min = global.selected.ml/5
	if(_base < _ml_min && _ml_min <= _maximo){
		criar_textbox(["parabens! voce acertou"])
	} else {
		criar_textbox(["voce errou, tente novamente"])
	}
}