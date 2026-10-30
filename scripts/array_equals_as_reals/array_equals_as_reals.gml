/// Compara dois arrays como números reais.
/// Aceita string com "." ou "," e ignora zeros à direita (5.5 == 5.50).
function array_equals_as_reals(_a, _b){
	if (!is_array(_a) || !is_array(_b)) return false
	if (array_length(_a) != array_length(_b)) return false

	for (var i = 0; i < array_length(_a); i++) {
		var _sa = string_replace_all(string(_a[i]), ",", ".")
		var _sb = string_replace_all(string(_b[i]), ",", ".")
		if (_sa == "" || _sb == "") return false
		if (real(_sa) != real(_sb)) return false
	}
	return true
}
