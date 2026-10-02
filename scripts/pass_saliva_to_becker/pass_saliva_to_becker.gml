function pass_saliva_to_becker(){
	var _becker = instance_nearest(x,y, obj_glass_jar_experiment_6)
	on_release = colect_saliva
	ml = 0
	liquid_draw_setup.liquid_color = c_white
	if _becker.agitando{
		if(_becker.indice_ph + max_ml > array_length(_becker.PH) * 5){
			if _becker.original_name == "Béquer com Suco De Limão"{
				if _becker.indice_ph + max_ml > 420 {
					create_textbox(x,y, "Quantidade de saliva excedeu o limite")
					create_textbox(x,y,"jdfghjktgxdcgvc")
					return
				}
			}else{
		create_textbox(x,y, "Quantidade de saliva excedeu o limite")
		return
			}
	}
		_becker.indice_ph = _becker.indice_ph + max_ml
	}else{
		create_textbox(x,y, "a bebida deve estar em agitação constante" )
	}
}