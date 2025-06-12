/// @function pass_liquid_to_becker(_mls, _other, _sprite_index)
/// @description Exibe um campo de input e chama a função callback quando finalizar.
/// @param _mls (string): Mls a serem passados para o becker
/// @param _other (Id.instance): Objeto colidindo
/// @param _sprite_index (number): Novo sprite
function pass_liquid_to_becker(_mls, _other, _sprite_index){
	with(becker){
		if(content == "") {
			ph = _other.ph
			content = _other.content
			sprite_index = _sprite_index
			scale_pulse(self, 2, 0.15)
		}
	}
}
