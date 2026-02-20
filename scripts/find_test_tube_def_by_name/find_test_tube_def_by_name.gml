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
		var _test_tube_def_liquids = struct_get_names(_curr_test_tube_def.liquids)
		if(string_normalize(_curr_test_tube_def.name) == string_normalize(_tube_name)) {
			_out.id = _id;
	        _out.def = _curr_test_tube_def;
			show_debug_message(_out)
	        return _out;
		}
		
		//for(var j = 0; j < array_length(_test_tube_def_liquids); j++) {
		//	var _liquid = _curr_test_tube_def.liquids[$ _test_tube_def_liquids[j]] 
		//	//var _liquid = _test_tube_def_liquids[j]
		//	//NOTE: Talvez deveria considerar considerar se os mls presentes 
		//	//		no caller estão corretos
		//	if(!is_struct(_liquid) || !is_undefined(_liquid.name)) return _out
		//	if (string_normalize(_liquid.name) == string_normalize(_tube_name)) {
	    //        _out.id = _id;
	    //        _out.def = _curr_test_tube_def;
		//		show_debug_message(_out)
	    //        return _out;
		//	}
		//}
    }
    return _out;
}