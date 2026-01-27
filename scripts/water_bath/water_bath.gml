function water_bath(){

	on_release = function() {
		
		if(place_meeting(x,y, obj_water_bath)) {
			
			if(obj_glass_jar_with_lid.sprite_index == s_glass_agar_with_lid){
				var _water_bath = instance_nearest(x, y, obj_water_bath)
				
				if(room == rm_preparacao_de_meios_de_cultura_em_agar){
					
					// substitui e reposiciona a sprite 
					_water_bath.sprite_index = s_agar_glass_jar_water_bath
					_water_bath.x = 273
					_water_bath.y = 419
					
				}
			}
		}
	}
	
}