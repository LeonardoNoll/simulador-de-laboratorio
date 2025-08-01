/// @function array_delete_value(array, value)
/// @param array        // Array alvo
/// @param value		// Valor a deletar
function array_delete_value(array, value){
	var index = -1;

	for (var i = 0; i < array_length(array); i++) {
	    if (array[i] == value) {
	        index = i;
	        break;
	    }
	}

	if (index != -1) {
	    array = array_delete(array, index, 1);
	}
}