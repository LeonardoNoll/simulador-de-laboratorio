function can_mix(_from, _to) {
    if (is_undefined(_from)) return false;
    if (is_undefined(_to)) return false;

    if (!variable_struct_exists(_from, "mix_results")) return false;
    if (variable_struct_exists(_from.mix_results, _to.id)) return true;
    if (!variable_struct_exists(_to, "mix_results")) return false;
    return variable_struct_exists(_to.mix_results, _from.id);
}
