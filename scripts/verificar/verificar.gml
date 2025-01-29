function verificar(){
	with (global.selected) {
		if(on_rack){
			// Mostra a mensagem resultante
			criar_textbox(mouse_x, y, ["A seringa possui " + string(ml) + " ml"])
		} else {
			criar_textbox(mouse_x, y, ["Antes de vazer a verificação, repouse a seringa sobre o suporte"])
		}
	}
}