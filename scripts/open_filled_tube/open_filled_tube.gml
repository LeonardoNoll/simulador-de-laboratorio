function open_filled_tube(){
	with(global.selected) {
		closed = false
		if sprite_index == s_filled_test_tube_1 {
			sprite_index = s_filled_oppened_test_tube_1
		}
				if sprite_index == s_filled_test_tube_2 {
			sprite_index = s_filled_oppened_test_tube_2
		}
				if sprite_index == s_filled_test_tube_3 {
			sprite_index = s_filled_oppened_test_tube_3
		}
				if sprite_index == s_filled_test_tube_4 {
			sprite_index = s_filled_oppened_test_tube_4
		}
		//options = [OPTIONS.FECHAR_TUBO_DE_ENSAIO]
		array_substitute_value(options, OPTIONS.ABRIR_TUBO_CHEIO, OPTIONS.FECHAR_TUBO_CHEIO)
	}
}
