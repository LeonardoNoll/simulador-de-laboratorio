function close_test_tube() {
	with(global.selected) {
		closed = true
		sprite_index = s_test_tube_empty_closed
		array_substitute_value(options, OPTIONS.FECHER_TUBO_DE_ENSAIO, OPTIONS.ABRIR_TUBO_DE_ENSAIO)
		
		var _has_HCL_mixture = !is_undefined(content) && content.id != "hcl"
		if(_has_HCL_mixture && !array_contains(options,OPTIONS.AGITAR)) {
			array_push(options, OPTIONS.AGITAR)
		}
	}
}