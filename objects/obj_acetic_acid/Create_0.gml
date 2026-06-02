event_inherited()

name = "Ácido acético"

needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]


on_release = function(){
	if (place_meeting(x, y, obj_becker_8)) { 
		pour_acetic_acid()
	}

}
