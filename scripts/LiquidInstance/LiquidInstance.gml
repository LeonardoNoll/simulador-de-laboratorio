function LiquidInstance(_def, _state = {}) constructor {
	id = _def.id;
	color = _def.color;
	name = _def.name;
	def = _def;
	state = _state;

	// ph mora em state (não como campo solto) para sobreviver ao clone()
	if (!variable_struct_exists(state, "ph") && variable_struct_exists(_def, "ph")) {
		state.ph = _def.ph;
	}

	static clone = function() {
		// depth 1 garante que "state" vira uma cópia independente, não uma referência compartilhada
		return variable_clone(self, 1);
	}
}