function pass_starch_to_erlenmeyer(){	
    var cb = function(_text) {
		var _meyer = instance_nearest(x, y, obj_erlenmeyer_experiment_4)
        if (string_digits(_text) == 50) {
			obj_solucao_amido.on_release = undefined
			_meyer.sprite_index = s_flask_blue
			_meyer.on_release = position_erlenmeyer_on_water_bath
			_meyer.content = new LiquidInstance(global.liquids_experiment_4.starch, {
				minutes_passed: 0,
				saliva_added: false
			})
			_meyer.content_id = _meyer.content.id;
        } else {
            create_textbox(_meyer.x, _meyer.y, ["Esta não é a quantia correta de mls. Tente novamente."]);
        }
	}
	
	get_input(x, y, "Mls a despejar", cb);
}