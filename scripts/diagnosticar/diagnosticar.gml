function diagnosticar(){
	// Menu extra com as opções de resposta
		var _my_menu = instance_create_layer(x + sprite_width + 20,  y, "Instances", obj_menu) 
			_my_menu.options = [
				OPTIONS.HIPOSSALIVACAO,
				OPTIONS.POUCA_SALIVACAO,
				OPTIONS.SALIVACAO_NORMAL
			]
}