function is_marked_correctly(_recipient, _substance, _mls){
	if (is_undefined(_recipient)) return false;
	if (is_undefined(_substance)) return false;
	if (is_undefined(_mls)) return false;
	if (!variable_struct_exists(global, "test_tubes_experiment_4")) return false;
	if (!is_struct(global.test_tubes_experiment_4)) return false;

	var _tube_name = _recipient.name;
	if (is_undefined(_tube_name)) return false;

	var _keys = variable_struct_get_names(global.test_tubes_experiment_4);
	var _matched_def = undefined;
	for (var i = 0; i < array_length(_keys); i++) {
		var _id = _keys[i];
		var _def = global.test_tubes_experiment_4[_id];
		if (is_struct(_def) && variable_struct_exists(_def, "name")) {
			if (string_normalize(_def.name) == string_normalize(_tube_name)) {
				_matched_def = _def;
				break;
			}
		}
	}
	if (is_undefined(_matched_def)) return false;
	if (!variable_struct_exists(_matched_def, "liquids")) return false;
	if (!is_struct(_matched_def.liquids)) return false;

	if (!variable_struct_exists(_matched_def.liquids, _recipient.content_id)) return false;

	return _matched_def.liquids[_recipient.content_id] == _mls;
}
