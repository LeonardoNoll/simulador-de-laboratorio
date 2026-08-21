function open(){
	with(global.selected){
		closed = false
		array_delete_value(options, OPTIONS.ABRIR)
	}
}