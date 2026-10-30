function put_pear_on(){
	var _pear = id;
	
	if(place_meeting(x,y, scale_on_contact_list)) {
		with(array_instance_nearest(scale_on_contact_list)) {
			var _pear_x_offset = 10;
			pear_equipped_info = {
				pipette_sprite: sprite_index,
				pipette_name: name,
				pear_x_offset: _pear_x_offset,
				pear_y_offset: pear_y_offset
			};
			
			sprite_index = pear_sprite;
			base_x -= _pear_x_offset;
			base_y -= pear_y_offset;
			x = base_x;
			y = base_y;
			
			options = [OPTIONS.REMOVER_PERA];
			scale_on_contact_list = _pear.pipette_scale_on_contact_list;
			on_release = _pear.pipette_on_release;

			// Guardado para restaurar o modo de coleta sempre que a pipeta esvaziar
			// (ver restore_pipette_collect_mode)
			collect_scale_on_contact_list = _pear.pipette_scale_on_contact_list;
			collect_on_release = _pear.pipette_on_release;
			
			pear_on = true;
			pear_instancing_info = {
				x: _pear.base_x,
				y: _pear.base_y,
				asset_type: _pear.object_index
			};
			//instance_nearest(x,y,)
			instance_destroy(_pear);
		}
	}
}