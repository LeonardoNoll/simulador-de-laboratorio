// Inherit the parent event
event_inherited();
PH = 0
needed_EPI = [obj_lab_coat]
on_release = function(){
	if place_meeting(x, y, obj_glass_jar_experiment_6){
		var _becker = instance_nearest(x, y, obj_glass_jar_experiment_6)
		if _becker.name != "Béquer 50ml"{
			create_textbox(x, y, "O Béquer ainda possui um conteúdo")
			return
		}
	if sprite_index == s_plastic_bottle_empty{
		create_textbox(x, y, "o conteúdo desta garrafa ja foi utilizado")
		return
	}
		_becker.sprite_index = parse_becker_sprite_by_liquid(sprite_index)
		_becker.PH = PH
		_becker.name = "Béquer com " + name
		_becker.options = [OPTIONS.LIMPAR_BECKER]
		sprite_index = s_plastic_bottle_empty
		name = "garrafa vazia"
	}


}


