function close_placa(){
	with (global.selected) {
		tampado = true
		options = [OPTIONS.DESTAMPAR_PLACA]
		// Não reseta o sprite — só o estado tampado.
	}
}
