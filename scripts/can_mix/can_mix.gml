function can_mix(_from, _to) {
    if (is_undefined(_from)) return false;
    if (is_undefined(_to)) return false;

	// Se houver uma regra dinâmica, permite a mistura
	if (!is_undefined(resolve_dynamic_mix(_from, _to))) return true;

    if (variable_struct_exists(_from, "mix_results") && variable_struct_exists(_from.mix_results, _to.id)) return true;
    if (variable_struct_exists(_to, "mix_results") && variable_struct_exists(_to.mix_results, _from.id)) return true;
	
    return false;
}
