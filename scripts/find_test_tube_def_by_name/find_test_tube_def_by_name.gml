/// @function find_test_tube_def_by_name(_test_tubes_struct, _tube_name)
/// @description Busca o tubo de teste pelo nome e retorna id e definicao.
/// @param _test_tubes_struct (struct): Struct com definicoes de tubos
/// @param _tube_name (string): Nome do tubo de teste

function find_test_tube_def_by_name(_test_tubes_struct, _tube_name) {
    var _out = { id: "", def: undefined };
    if (is_undefined(_test_tubes_struct) || is_undefined(_tube_name)) return _out;

    var _keys = variable_struct_get_names(_test_tubes_struct);
    for (var i = 0; i < array_length(_keys); i++) {
        var _id = _keys[i];
        var _def = _test_tubes_struct[_id];
        if (is_struct(_def) && variable_struct_exists(_def, "name")) {
            if (string_normalize(_def.name) == string_normalize(_tube_name)) {
                _out.id = _id;
                _out.def = _def;
                return _out;
            }
        }
    }

    return _out;
}
