function placa(){
	with global.selected {
		if tampado==true{
			options = [OPTIONS.DESTAMPAR_PLACA]
			tampado = false
		}
		else{
			options = [OPTIONS.TAMPAR_PLACA]
			tampado = true
		}
	}
}
