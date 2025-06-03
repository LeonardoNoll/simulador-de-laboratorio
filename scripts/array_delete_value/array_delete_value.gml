/// @function array_delete_value(array, value)
/// @param array        // Referência ao objeto que será escalado
/// @param value		// Valor máximo de escala (ex: 1.5 para 150%)
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