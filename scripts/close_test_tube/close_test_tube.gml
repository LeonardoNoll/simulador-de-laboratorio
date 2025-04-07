function close_test_tube() {
	with(global.selected) {
		closed = true
		sprite_index = s_test_tube_empty_closed
		options = [OPTIONS.ABRIR_TUBO_DE_ENSAIO]
	}
}