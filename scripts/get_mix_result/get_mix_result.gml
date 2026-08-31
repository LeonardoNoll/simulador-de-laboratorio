function get_mix_result(_incoming_liquid, _current_liquid){
	// 1. Tenta resolução dinâmica baseada em estado
	var _dynamic = resolve_dynamic_mix(_incoming_liquid, _current_liquid);
	if (!is_undefined(_dynamic)) return _dynamic;

	// 2. Fallback para regras estáticas nos LiquidDef (mix_results mora no def quando é uma LiquidInstance)
	var _incoming_mix_results = variable_struct_exists(_incoming_liquid, "mix_results") ? _incoming_liquid.mix_results : (variable_struct_exists(_incoming_liquid, "def") ? _incoming_liquid.def.mix_results : undefined);
	var _current_mix_results = variable_struct_exists(_current_liquid, "mix_results") ? _current_liquid.mix_results : (variable_struct_exists(_current_liquid, "def") ? _current_liquid.def.mix_results : undefined);

    if (!is_undefined(_incoming_mix_results) && variable_struct_exists(_incoming_mix_results, _current_liquid.id)) {
		return _incoming_mix_results[$ _current_liquid.id];
    } else if (!is_undefined(_current_mix_results) && variable_struct_exists(_current_mix_results, _incoming_liquid.id)) {
        return _current_mix_results[$ _incoming_liquid.id];
    }
	return undefined
}