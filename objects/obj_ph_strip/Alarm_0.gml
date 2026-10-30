counting = false

if(place_meeting(x,y,reference)) {
	// Tubos de ensaio guardam o pH dentro de content.state; béqueres usam o campo ph legado.
	var _has_liquid_state = variable_instance_exists(reference, "content") && is_struct(reference.content) && variable_struct_exists(reference.content, "state") && variable_struct_exists(reference.content.state, "ph");
	ph = _has_liquid_state ? reference.content.state.ph : reference.ph
	scale_pulse(self, 1.5, 0.15)
}
