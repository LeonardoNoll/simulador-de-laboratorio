event_inherited();




needed_EPI = [obj_lab_coat]
name = "Béquer 50ml"
content = ""


on_release = function(){
	if place_meeting(x, y, obj_cocacola_bottle){
		var _becker = instance_nearest(x, y, obj_cocacola_bottle)
		obj_glass_jar_experiment_6.sprite_index = s_becker_cocacola
		if _becker.name != "Béquer 50ml"{
			create_textbox(x, y, "O Béquer ainda possui um conteúdo")
			return
		}
	
		sprite_index = s_becker_cocacola	
		
		_becker.sprite_index = s_becker_cocacola
		_becker.PH = PH
		
		instance_destroy()
	}
}
if (sprite_index == s_becker_cocacola){
	options = [OPTIONS.LIMPAR_BECKER]	
}