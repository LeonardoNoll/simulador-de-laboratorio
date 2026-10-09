function close(){
	with(global.selected){
		closed = true
		array_substitute_value(options, OPTIONS.FECHAR, OPTIONS.ABRIR)
	}
}
