//@description passa o ácido acético para o béquer 
function pour_acetic_acid(){
	
	var cb = function(_text) {
		// verifica a posição do bequer
		var _becker = instance_nearest(x, y, obj_becker_8)
		//verifica se o valor está correto
        if (string_digits(_text) == 200) {
			_becker.name = "Béquer com 200 mL de ácido acético" // muda o nome
        } else {
			// mensagem de erro
            create_textbox(_becker.x, _becker.y, "Esta não é a quantia correta de mL. Tente novamente.")
        }
	}
	get_input(x+20, y-5, "Quantidade de mililitros", cb)
}