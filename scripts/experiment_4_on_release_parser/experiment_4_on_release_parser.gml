function experiment_4_on_release_parser(){
	if(place_meeting(x,y, obj_test_tube_experiment_4)) {
		try_to_pass_liquid_to_test_tube_experiment_4()
		
	}
	
	if(place_meeting(x,y, obj_erlenmeyer_experiment_4)) {
		if(ml != 50) {
			create_textbox(x, y, "Esta não é a quantia correta de mls")
			return
		}
		
		var _erlenmeyer = instance_nearest(x,y ,obj_erlenmeyer_experiment_4)
		_erlenmeyer.with_startch = true
		
	}
}