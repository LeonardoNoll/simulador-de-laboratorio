function diagnosticar(){
			if(obj_syringe_filled.on_rack) {
			// Menu extra com as opções de resposta
			var _my_menu = instance_create_depth(x + sprite_width + 20,  y, depth, obj_menu) 
			_my_menu.options = [
				OPTIONS.HIPOSSALIVACAO,
				OPTIONS.POUCA_SALIVACAO,
				OPTIONS.SALIVACAO_NORMAL
			]
		} else {
			criar_textbox(mouse_x, y, ["Antes de vazer a verificação, repouse a seringa sobre o suporte"])
		}
}