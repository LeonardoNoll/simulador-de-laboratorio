/// @function ensure_liquid_instance(_inst)
/// @description Garante que a instancia tenha uma LiquidInstance em seu 'content' se tiver um 'content_id'.
/// @param _inst {Id.Instance} A instância a ser verificada.
/// @return {Struct.LiquidInstance} A instância de líquido resultante ou undefined.

function ensure_liquid_instance(_inst) {
	if (!instance_exists(_inst)) return undefined;
	
	// Se já for uma LiquidInstance válida, apenas retorna
	if (variable_instance_exists(_inst, "content") && is_struct(_inst.content) && variable_struct_exists(_inst.content, "id")) {
		return _inst.content;
	}
	
	// Se tiver content_id, tenta instanciar
	if (variable_instance_exists(_inst, "content_id") && !is_undefined(_inst.content_id) && _inst.content_id != "") {
		// Determina qual struct de liquidos usar (atualmente focado no exp 4)
		var _liquids = variable_struct_exists(global, "liquids_experiment_4") ? global.liquids_experiment_4 : undefined;
		
		if (!is_undefined(_liquids) && variable_struct_exists(_liquids, _inst.content_id)) {
			var _def = _liquids[$ _inst.content_id];
			var _state = variable_instance_exists(_inst, "initial_liquid_state") ? _inst.initial_liquid_state : {};
			
			// Cria a nova instância
			_inst.content = new LiquidInstance(_def, _state);
			return _inst.content;
		}
	}
	
	// Fallback para o que quer que esteja no content
	return variable_instance_exists(_inst, "content") ? _inst.content : undefined;
}