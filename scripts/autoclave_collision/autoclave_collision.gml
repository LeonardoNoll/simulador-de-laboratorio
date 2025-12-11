// verifica colisão com a autoclave e posiciona o frasco dentro

function autoclave_collision(){
	on_release = function() {
		
		if(place_meeting(x,y, obj_autoclave)) {
			
			if(obj_glass_jar_with_lid.sprite_index == s_glass_mixed_autoclave){
				var _autoclave = instance_nearest(x, y, obj_autoclave)
				// substitui a sprite da autoclave 
				_autoclave.sprite_index = s_open_autoclave_glass_jar
				
				instance_destroy()
			}
		}
	}
}