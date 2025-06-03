function shake(){
	with(global.selected) {
		if(content == "HCl + Água destilada" || content == "HCl + Saliva estimulada") {
			ph = 2
			scale_pulse(self, 2, 0.15)
		}
		//show_debug_message(content + " " + string(ph))
	}
}