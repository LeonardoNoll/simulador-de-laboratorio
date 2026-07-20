function pass_saliva_to_becker(){
	var _becker = instance_nearest(x,y, obj_glass_jar_experiment_6)
	on_release = colect_saliva
	//to do esvaziar pipeta
	if _becker.agitando{
		if(_becker.indice_ph + max_ml > array_length(_becker.PH) * 5){
		create_textbox(x,y, "Quantidade de saliva excedeu o limite")
		return
	}
		_becker.indice_ph = _becker.indice_ph + max_ml
	}else{
		create_textbox(x,y, "a bebida deve estar em agitação constante" )
	}
}