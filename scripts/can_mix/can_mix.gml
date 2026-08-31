function can_mix(_from, _to) {
    if (is_undefined(_from)) return false;
    if (is_undefined(_to)) return false;

	// Se houver uma regra dinâmica, permite a mistura
	if (!is_undefined(resolve_dynamic_mix(_from, _to))) return true;

	// mix_results mora na LiquidDef; se _from/_to forem LiquidInstance, precisa olhar def.mix_results
	var _from_mix_results = variable_struct_exists(_from, "mix_results") ? _from.mix_results : (variable_struct_exists(_from, "def") ? _from.def.mix_results : undefined);
	var _to_mix_results = variable_struct_exists(_to, "mix_results") ? _to.mix_results : (variable_struct_exists(_to, "def") ? _to.def.mix_results : undefined);

    if (!is_undefined(_from_mix_results) && variable_struct_exists(_from_mix_results, _to.id)) return true;
    if (!is_undefined(_to_mix_results) && variable_struct_exists(_to_mix_results, _from.id)) return true;

    return false;
}
