function update_test_tube_ph_10_min(){
	for(var i = 0; i < instance_number(obj_test_tube); i++) {
		with(instance_find(obj_test_tube, i)) {
			if(content = "HCl + Saliva estimulada"){
				ph = random_range(4, 6)
				scale_pulse(self, 2, 0.15)
			}
		}
	}	
}