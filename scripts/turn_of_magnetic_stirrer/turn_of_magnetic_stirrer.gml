function turn_of_magnetic_stirrer(){
	var _stirrer = obj_magnetic_stirrer_experiment_6
	var _becker_ref = _stirrer.becker
	if (!instance_exists(_becker_ref)) {
		_becker_ref = obj_phmetro.becker
	}
	if (instance_exists(_becker_ref)) {
		_becker_ref.name = _becker_ref.original_name
		_becker_ref.agitando = false
	}
	_stirrer.options = [OPTIONS.LIGAR_AGITADOR_MAGNETICO]
}
