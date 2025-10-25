function pass_starch_to_erlenmeyer(){	
    // Define o callback, ligado ao contexto
    var cb = function(_text) {
		var _meyer = instance_nearest(x, y, obj_erlenmeyer_experiment_4)
        if (string_digits(_text) == 50) {
			_meyer.sprite_index = s_flask_blue
			obj_solucao_amido.on_release = undefined
        } else {
            create_textbox(_meyer.x, _meyer.y, ["Esta não é a quantia correta de mls. Tente novamente."]);
        }
	}
	
	get_input(x, y, "Mls a despejar", cb);
}