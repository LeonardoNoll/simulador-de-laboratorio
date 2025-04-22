/// @function pass_liquid_to_becker(_mls, _ph, _sprite_index)
/// @description Exibe um campo de input e chama a função callback quando finalizar.
/// @param _mls (string): Mls a serem passados para o becker
/// @param _ph (number): pH da substancia
/// @param _sprite_index (number): Novo sprite
function pass_liquid_to_test_tube(_mls, _ph, _sprite_index){
	//TODO: E necessário adicionar uma lógica de identificação do tubo
	var _test_tube = instance_nearest(mouse_x,mouse_y,obj_test_tube)
	if(_test_tube.closed) return 
	
	if(_test_tube.content == "") {
		_test_tube.sprite_index = _sprite_index
		_test_tube.content = content
		_test_tube.ph = 0 // Apesar de parecer inútil, essa linha evita que um bug aconteça com o ph
		_test_tube.ph = ph
	} else if(_test_tube.content == "HCl") {
		_test_tube.content += " + " + content
	}
	_test_tube.name = "Tube de teste com " + _test_tube.content
	
		
	// Resetar estado da pipeta
	var _is10ml = object_index == obj_pipett_10ml
	sprite_index = _is10ml ? s_pipette_10ml_with_pear : s_pipette_5ml_with_pear
	name = _is10ml ? "Pipeta 10ml" : "Pipeta 5m"
	content = ""
	on_release = get_mls
	ml = 0
}
