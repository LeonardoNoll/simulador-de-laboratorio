/// @function pass_liquid_to_becker(_mls, _ph, _sprite_index)
/// @description Exibe um campo de input e chama a função callback quando finalizar.
/// @param _mls (string): Mls a serem passados para o becker
/// @param _ph (number): pH da substancia
/// @param _sprite_index (number): Novo sprite
function pass_liquid_to_test_tube(_mls, _ph, _sprite_index){
	with(instance_nearest(x,y,obj_test_tube)){
		if(closed || ml != 0) return
		ph = _ph
		sprite_index = _sprite_index
	}
	// Resetar estado da pipeta
	var _is10ml = object_index == obj_pipett_10ml
	sprite_index = _is10ml ? s_pipette_10ml_with_pear : s_pipette_5ml_with_pear
	name = _is10ml ? "Pipeta 10ml" : "Pipeta 5m"
	on_release = get_mls
	ml = 0
	ph = 0
}
