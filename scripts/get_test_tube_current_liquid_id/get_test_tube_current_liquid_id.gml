/// @function get_test_tube_current_liquid_id(_test_tube)
/// @description Retorna o id do liquido atual do tubo.
/// @param _test_tube (struct): Instancia do tubo de teste

function get_test_tube_current_liquid_id(_test_tube) {
    if (is_struct(_test_tube.content) && variable_struct_exists(_test_tube.content, "id")) return _test_tube.content.id;
    if (is_string(_test_tube.content)) return _test_tube.content;
    return "";
}
