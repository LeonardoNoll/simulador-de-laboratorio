function magnetic_stirrer(){
	with(global.selected){
		if(object_index == obj_glass_jar_with_lid){
			sprite_index = s_glass_mixed
			on_release = function() {
				if(place_meeting(x,y, obj_autoclave)) {
					var _autoclave = instance_nearest(x, y, obj_autoclave)
					//base_x = (_autoclave.x - 5)
					//base_y = (_autoclave.y - 36)
					base_x = (_autoclave.x)
					base_y = (_autoclave.y)


					instance_destroy()
				}
			
			}
		}

	}
}