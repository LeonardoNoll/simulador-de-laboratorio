function can_mix(_from, _to) {
    if (is_undefined(_from)) return false;
    if (is_undefined(_to)) return false;

    return variable_struct_exists(_from.mix_results, _to.id);
}
