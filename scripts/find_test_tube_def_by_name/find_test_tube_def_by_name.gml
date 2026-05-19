/// @function find_test_tube_def_by_name(_test_tubes_struct, _tube_name)
/// @description Busca o tubo de teste pelo nome e retorna id e definicao.
/// @param _test_tubes_struct (struct): Struct com definicoes de tubos
/// @param _tube_name (string): Nome do tubo de teste

function find_test_tube_def_by_name(_test_tubes_struct, _tube_name) {
    var _out = { id: "", def: undefined };
    if (!is_struct(_test_tubes_struct) || is_undefined(_tube_name)) return _out;

    var _keys = variable_struct_get_names(_test_tubes_struct);
	
    for (var i = 0; i < array_length(_keys); i++) {
        var _id = _keys[i];
        var _curr_test_tube_def = _test_tubes_struct[$ _id];
        
		if (!is_struct(_curr_test_tube_def) || !variable_struct_exists(_curr_test_tube_def, "name")) return _out		
		if(string_normalize(_curr_test_tube_def.name) == string_normalize(_tube_name)) {
			_out.id = _id;
	        _out.def = _curr_test_tube_def;
			show_debug_message("out" + string(_out))
	        return _out;
		}
    }
    return _out;
}

/// @function TestTubeDef(_id, _name, _liquids)
/// @description Constructor for test tube definitions.
/// @param _id (any): Identifier for the definition
/// @param _name (string): Display name
/// @param _liquids (struct): Struct containing liquid quantities
function TestTubeDef(_id, _name, _liquids = undefined) constructor {
	id = _id;
	name = _name;
	
	if (is_undefined(_liquids)) {
		liquids = {
			saliva: 1,
			distilled_water: 3,
			iodine: 2
		};
	} else {
		liquids = _liquids;
	}
}
