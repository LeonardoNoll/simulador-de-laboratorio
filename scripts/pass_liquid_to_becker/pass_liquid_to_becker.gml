/// @function pass_liquid_to_becker(_mls, _other, _sprite_index)
/// @description Exibe um campo de input e chama a função callback quando finalizar.
/// @param _mls (string): Mls a serem passados para o becker
/// @param _other (Id.instance): Objeto colidindo
/// @param _sprite_index (number): Novo sprite
function pass_liquid_to_becker(_mls, _other, _sprite_index) {
	// Checa se está colocando no béquer certo
	// TODO: remover "t1983" na versão final
	var parent_normalised = string_normalize("àÀáÁ")
	var other_normalised = string_normalize(_other.name)
	if(string_normalize(parent.content) != string_normalize(_other.name) && _other.name != "t1983") {
		create_textbox(x, y, ["Você só pode colocar este líquido no béquer com a marcação certa."])
		return
	}
	
	
	var sprite_ctx = parent.object_index == obj_acid_bottle 
					? s_marked_becker_with_HCl
					: s_marked_becker_with_water

	 var ctx = {
		parent: parent,
        other: _other,
        sprite_index: sprite_ctx,
        x: x,
        y: y
    };

    // Define o callback, ligado ao contexto
    var cb = function(_text, ctx) {
        if (string_digits(_text) == 15) {
            with (ctx.other) {
                if (content == "") {
                    ph = ctx.parent.ph;
                    content = ctx.parent.content;
                    sprite_index = ctx.sprite_index;
                    scale_pulse(self, 2, 0.15);
					options = []
                }
            }
        } else {
            create_textbox(ctx.x, ctx.y, ["Esta não é a quantia correta de mls. Tente novamente."]);
        }
	}
    // Chama get_input com callback preparado
	if(ctx.parent.object_index == obj_stimulated_saliva) {
		with (ctx.other) {
            if (content == "") {
                ph = ctx.parent.ph;
                content = ctx.parent.content;
                sprite_index = ctx.sprite_index;
                scale_pulse(self, 2, 0.15);
				options = []
            }
        }
		// TODO: tornar seringa inutilizável
		ctx.parent.sprite_index = s_sirynge_empty
	} else {
		get_input(x, y, "Mls a despejar", cb, ctx);
	}
}