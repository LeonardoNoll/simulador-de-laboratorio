//@function pass_into_the_bottles()
//@description passa o meio desidratado ao frasco
function pass_into_the_bottle(){
	
	var cb = function(_text) {
		// verifica a posição do frasco de vidro
		var _glass_jar = instance_nearest(x, y, obj_glass_jar_with_lid)
		//verifica se o valor está correto
        if (string_digits(_text) == 37) {
			_glass_jar.sprite_index = s_glass_bhi // muda a sprite (frasco com o meio desidratado)
        } else {
			// mensagem de erro
            create_textbox(_cylinder.x, _cylinder.y, ["Esta não é a quantia correta de g. Tente novamente."]);
        }
	}
	get_input(x, y, "Digite a quantidade de g", cb);

}




