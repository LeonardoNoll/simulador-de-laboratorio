function close_test_tube() {
	with(global.selected) {
		closed = true
		options = (content != "" && content != "HCl") ? [OPTIONS.ABRIR_TUBO_DE_ENSAIO, OPTIONS.AGITAR] :  [OPTIONS.ABRIR_TUBO_DE_ENSAIO]
		show_debug_message(content)
	}
}