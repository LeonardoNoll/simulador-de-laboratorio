/// @function parse_mix_result(_mix)
/// @description Normaliza o resultado de mistura em id e ml exigido.
/// @param _mix (any): Resultado da mistura (string ou struct)

function parse_mix_result(_mix) {
    var _out = { id: "", required_ml: undefined };
    if (is_struct(_mix)) {
        if (variable_struct_exists(_mix, "result")) _out.id = _mix.result;
        if (variable_struct_exists(_mix, "ml")) _out.required_ml = _mix.ml;
    } else if (is_string(_mix)) {
        _out.id = _mix;
    }
    return _out;
}
