event_inherited();




needed_EPI = [obj_lab_coat]
name = "Béquer 50ml"
content = ""
options = []

on_release = function(){
	if place_meeting(x, y, obj_cocacola_bottle){
		locked = true
		var _becker = instance_nearest(x, y, obj_cocacola_bottle)
		if _becker.name != "Béquer 50ml"{
			create_textbox(x, y, "O Béquer ainda possui um conteúdo")
			return
		}

		_becker.sprite_index = s_becker_cocacola
		_becker.PH = PH
		
		instance_destroy()
	}
}