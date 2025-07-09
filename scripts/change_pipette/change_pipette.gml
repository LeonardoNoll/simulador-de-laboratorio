function change_pipette(){
	if(place_meeting(x, y, obj_pipette_discard)) {
		used = ""
		scale_pulse(self, 2, 0.15)
		obj_pipette_discard.sprite_index = s_pipette_discard_used
	}
}