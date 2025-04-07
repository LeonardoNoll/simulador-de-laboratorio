/// @function pass_liquid_to_becker(_mls, _ph, _sprite_index)
/// @description Exibe um campo de input e chama a função callback quando finalizar.
/// @param _mls (string): Mls a serem passados para o becker
/// @param _ph (number): pH da substancia
/// @param _sprite_index (number): Novo sprite
function pass_liquid_to_becker(_mls, _ph, _sprite_index){
	with(instance_nearest(x,y,obj_25ml_becker)){
		ph = _ph
		sprite_index = _sprite_index
		get_input(x, y, "Marque o recipiente", function(_text) {
			name = _text	
		})
	}
}
