function pass_saliva_to_becker(){
	var _becker = instance_nearest(x,y, obj_glass_jar_experiment_6)
	on_release = colect_saliva
	ml = 0
	liquid_draw_setup.liquid_color = c_white
	if _becker.agitando{
		var _proxima = _becker.indice_ph + max_ml
		var _limite_padrao = (array_length(_becker.PH) - 1) * 5
		var _eh_limao = (_becker.original_name == "Béquer com Suco De Limão")
		if (_proxima <= _limite_padrao) or (_eh_limao and _proxima <= 420){
			_becker.indice_ph = _proxima
		}else{
			create_textbox(x,y, "Quantidade de saliva excedeu o limite")
		}
	}else{
		create_textbox(x,y, "a bebida deve estar em agitação constante" )
	}
}
