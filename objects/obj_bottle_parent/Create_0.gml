// Inherit the parent event
event_inherited();
PH = 0
on_release = function(){
	if place_meeting(x, y, obj_becker_experiment_6){
		var _becker = instance_nearest(x, y, obj_becker_experiment_6)
		if _becker.name != "Béquer 50ml"{
			create_textbox(x, y, "O Béquer ainda possui um conteúdo")
			return
		}
		_becker.PH = PH
		_becker.name = "Béquer com " + name
		instance_destroy()
	}


}


