function pass_starch_to_erlenmeyer(){	
    var cb = function(_text) {
		var _meyer = instance_nearest(x, y, obj_erlenmeyer_experiment_4)
        if (string_digits(_text) == 50) {
			_meyer.sprite_index = s_flask_blue
			_meyer.on_release = position_erlenmeyer_on_water_bath
			obj_solucao_amido.on_release = undefined
        } else {
            create_textbox(_meyer.x, _meyer.y, ["Esta não é a quantia correta de mls. Tente novamente."]);
        }
	}
	
	get_input(x, y, "Mls a despejar", cb);
}