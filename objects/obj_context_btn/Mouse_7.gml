// As opções do switch devem cobrir todas os itens existentes
// no array "OPTIONS", que pertence ao obj_game. Opções
// com "return" antes do "break" não fecharão o menu imediatamente.

switch(option) {
	case OPTIONS.CALCAR:
		calcar()
		break
	case OPTIONS.VERIFICAR:
		verificar()
		break
	case OPTIONS.DIAGNOSTICAR:
		diagnosticar()
		return
		break
	case OPTIONS.HIPOSSALIVACAO:
		verificar_resposta(0, 0.1)
		break
	case OPTIONS.POUCA_SALIVACAO:
		verificar_resposta(0.1, 0.25)
		break
	case OPTIONS.SALIVACAO_NORMAL:
		verificar_resposta(0.25, 0.35)
		break
	case OPTIONS.IDENTIFICAR:
		identificar()
		break
	case OPTIONS.REALIZAR_COLETA:
		realizar_coleta()
		break
	case OPTIONS.CRONOMETRAR_COLETA:
		cronometrar_coleta()
		break
	case OPTIONS.MAIS_1_MINUTO:
		mais_1_minuto()
		return
		break
	case OPTIONS.MENOS_1_MINUNO:
		menos_1_minuto()
		return
		break
	case OPTIONS.ACELERAR_CONTAGEM:
		acelerar_contagem()
		break
	case OPTIONS.FINALIZAR_TUTORIAL:
		finalizar_tutorial()
		break
}

// Clean up
instance_destroy(obj_menu)