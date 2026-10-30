function open(){
	with(global.selected){
		closed = false
		array_substitute_value(options, OPTIONS.ABRIR, OPTIONS.FECHAR)
	}
}