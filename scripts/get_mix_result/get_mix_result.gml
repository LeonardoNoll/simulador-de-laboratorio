function get_mix_result(_incoming_liquid, _current_liquid){
    if (variable_struct_exists(_incoming_liquid, "mix_results")
        && variable_struct_exists(_incoming_liquid.mix_results, _current_liquid.id)) {
        return _incoming_liquid.mix_results[_current_liquid.id];
    } else if (variable_struct_exists(_current_liquid, "mix_results")
        && variable_struct_exists(_current_liquid.mix_results, _incoming_liquid.id)) {
        return _current_liquid.mix_results[_incoming_liquid.id];
    }
	return undefined
}