function shake(){
	with(global.selected) {
		if(!is_undefined(content) && (content.id == "hcl_agua_mix" || content.id == "hcl_saliva_mix")) {
			content.state.ph = 2
			scale_pulse(self, 2, 0.15)
		}
	}
}