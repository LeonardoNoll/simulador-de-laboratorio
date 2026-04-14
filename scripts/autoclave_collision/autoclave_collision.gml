// verifica colisão com a autoclave e posiciona o frasco dentro

function autoclave_collision(){
	on_release = function() {
		
		if(place_meeting(x,y, obj_autoclave)) {
			
			if(obj_glass_jar_with_lid.sprite_index == s_glass_mixed_autoclave || obj_glass_jar_with_lid.sprite_index == s_glass_agar_mixed_autoclave){
				var _autoclave = instance_nearest(x, y, obj_autoclave)
				// substitui a sprite da autoclave 
				if(room == rm_preparacao_de_meios_de_cultura_em_caldo){
					_autoclave.sprite_index = s_open_autoclave_glass_jar
					
				}else if(room == rm_preparacao_de_meios_de_cultura_em_agar){
					_autoclave.sprite_index = s_open_autoclave_glass_jar_2
				}
				
				instance_destroy()
			}
		}
	}
}