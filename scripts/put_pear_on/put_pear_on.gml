function put_pear_on(){
	var _pear = id;
	
	if(place_meeting(x,y, obj_pipette_10ml)) {
		with(instance_nearest(mouse_x,mouse_y,obj_pipette_10ml)) {
			sprite_index = pear_sprite;
			var _pear_x_offset = 10;
			base_x -= _pear_x_offset;
			base_y -= pear_y_offset;
			x = base_x;
			y = base_y;
			
			options = [OPTIONS.REMOVER_PERA];
			scale_on_contact_list = _pear.pipette_scale_on_contact_list;
			on_release = _pear.pipette_on_release;
			
			pear_on = true;
			pear_inicial_position = {
				x: _pear.base_x,
				y: _pear.base_y
			};
			
			instance_destroy(_pear);
		}
	}
}