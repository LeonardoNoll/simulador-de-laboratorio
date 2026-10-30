// Atualiza as opções ANTES do pai abrir o menu
if (tampado) {
	options = [OPTIONS.DESTAMPAR_PLACA]
} else {
	options = [OPTIONS.TAMPAR_PLACA]
}

event_inherited();
