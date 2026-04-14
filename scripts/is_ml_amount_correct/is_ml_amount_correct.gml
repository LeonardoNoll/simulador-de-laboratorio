function is_ml_amount_correct(_mls, _other) {
	var _warning_message = ["Esta não é a quantia correta de mls. Consulte o material e tente novamente."]
	if(_other.content = "HCl" && _mls != 6) return _warning_message
	else if(_other.content = "Saliva estimulada" && _mls != 2) return _warning_message
	else if(_other.content = "Água destilada" && _mls != 2) return _warning_message
	else return ""
}