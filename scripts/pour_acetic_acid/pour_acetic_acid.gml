//@description passa o ácido acético para o béquer 

function pour_acetic_acid(_becker){
 
	var cb = function(_text, _becker) {
		//verifica se o valor está correto
        if (real(_text) == 200) {
			_becker.sprite_index = s_becker_8_2
			_becker.name = "Béquer com 200 mL de ácido acético" // muda o nome
        } else {
			// mensagem de erro
			create_textbox(_becker.x, _becker.y, "Esta não é a quantia correta de mL. Tente novamente.")
        }
	}
	get_input(x+20, y-5, "Quantidade de mililitros", cb, _becker)
}