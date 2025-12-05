//@function get_distilled_water()
//@description pega a água destilada do destilador
function get_distilled_water(){
	
	var cb = function(_text) {
		// verifica a posição da proveta graduada
		var _cylinder = instance_nearest(x, y, obj_graduated_cylinder)
		//verifica se o valor está correto
        if (string_digits(_text) == 1) {
			_cylinder.sprite_index = s_graduated_cylinder_2 // muda a sprite (água destilada)
			_cylinder.name = "Proveta graduada com 1L de água destilada" // muda o nome
        } else {
			// mensagem de erro
            create_textbox(_cylinder.x, _cylinder.y, ["Esta não é a quantia correta de L. Tente novamente."]);
        }
	}
	get_input(x+10, y, "Quantidade de L", cb);
}

