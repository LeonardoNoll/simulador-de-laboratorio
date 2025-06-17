function change_pipette(){
	with(global.selected) {
		used = ""
		options = []
		scale_pulse(self, 2, 0.15)
		for(var i; i < 100; i++) {
			show_debug_message(i)
		}
	}
}