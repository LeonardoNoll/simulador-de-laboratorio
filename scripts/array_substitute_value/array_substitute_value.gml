function array_substitute_value(array, old_value, new_value){
	var _i = array_get_index(array, old_value)

	if (_i != -1) {
	    array[_i] = new_value
	}
}
