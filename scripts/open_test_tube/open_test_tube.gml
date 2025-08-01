function open_test_tube(){
	with(global.selected) {
		closed = false
		sprite_index = s_test_tube
		//options = [OPTIONS.FECHER_TUBO_DE_ENSAIO]
		array_substitute_value(options, OPTIONS.ABRIR_TUBO_DE_ENSAIO, OPTIONS.FECHER_TUBO_DE_ENSAIO)
	}
}


