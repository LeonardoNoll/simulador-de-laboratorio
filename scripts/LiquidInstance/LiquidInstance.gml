function LiquidInstance(_def, _state = {}) constructor {
	id = _def.id;
	color = _def.color;
	name = _def.name;
	def = _def;
	state = _state;

	static clone = function() {
		var _new_state = {};
		var _keys = variable_struct_get_names(state);
		for (var i = 0; i < array_length(_keys); i++) {
			_new_state[$ _keys[i]] = state[$ _keys[i]];
		}
		return new LiquidInstance(def, _new_state);
	}
}