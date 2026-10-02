function close_filled_tube() {
	with(global.selected) {
		closed = true
		if sprite_index == s_filled_oppened_test_tube_1 {
			sprite_index = s_filled_test_tube_1
		}
				if sprite_index == s_filled_oppened_test_tube_2 {
			sprite_index = s_filled_test_tube_2
		}
				if sprite_index == s_filled_oppened_test_tube_3 {
			sprite_index = s_filled_test_tube_3
		}
				if sprite_index == s_filled_oppened_test_tube_4 {
			sprite_index = s_filled_test_tube_4
		}
			array_substitute_value(options, OPTIONS.FECHAR_TUBO_CHEIO, OPTIONS.ABRIR_TUBO_CHEIO)
		var _has_HCL_mixture = !is_undefined(content) && content.id != "hcl"
		if(_has_HCL_mixture && !array_contains(options,OPTIONS.AGITAR)) {
			array_push(options, OPTIONS.AGITAR)
		}
	}
}