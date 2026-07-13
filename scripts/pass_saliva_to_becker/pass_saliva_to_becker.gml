function pass_saliva_to_becker(){
	var _becker = instance_nearest(x,y, obj_glass_jar_experiment_6)
	on_release = colect_saliva
	//esvaziar pipeta
	if _becker.indice_ph != array_length(_becker.PH)
		_becker.indice_ph++
}