function draw_liquid_on_pipette(){
	if(ml != 0) {
		draw_set_color(content == "HCl" ? HCl_color : water_color)
		
		var _is5ml = self.object_index == obj_pipette_5ml 
		var _left_corner = x + image_xscale	* 7
		var _right_corner = x + image_xscale * 14 
		var _liquid_base = y + (image_yscale * (_is5ml ? (240-129) : (300-161)))
		var _max_liquid_pixels = image_yscale * (_is5ml ? (236 - 150) : (315 - 163))
		var _actual_pixels =  _max_liquid_pixels * (ml / (_is5ml ? 5 : 10))
		
		draw_rectangle(_left_corner, _liquid_base - _actual_pixels, _right_corner, _liquid_base, false)
	}
}

