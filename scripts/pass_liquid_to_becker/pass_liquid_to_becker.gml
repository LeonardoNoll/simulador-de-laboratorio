/// @function pass_liquid_to_becker(_mls, _other, _sprite_index)
/// @description Exibe um campo de input e chama a função callback quando finalizar.
/// @param _mls (string): Mls a serem passados para o becker
/// @param _other (Id.instance): Objeto colidindo
/// @param _sprite_index (number): Novo sprite
function pass_liquid_to_becker(_mls, _other, _sprite_index){
	with(becker){
		ph = _other.ph
		content = _other.content
		sprite_index = _sprite_index
		get_input(x, y, "Marque o recipiente", function(_text) {
			name = _text	
		})
		instance_destroy(_other)
	}
}
