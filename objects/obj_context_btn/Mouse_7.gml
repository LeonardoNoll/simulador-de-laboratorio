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
	case OPTIONS.EXTRAIR_CONTEUDO:
		extrair_conteudo()
		break
	case OPTIONS.HIPOSSALIVACAO:
		if(room == rm_1b_normal) verificar_resposta(0, 0.1)
		else verificar_resposta(0, 0.7)
		break
	case OPTIONS.POUCA_SALIVACAO:
		if(room == rm_1b_normal) verificar_resposta(0.1, 0.25)
		else verificar_resposta(0.7, 1)
		break
	case OPTIONS.SALIVACAO_NORMAL:
		if(room == rm_1b_normal) verificar_resposta(0.25, 0.35)
		else verificar_resposta(1, 3)
		break
	case OPTIONS.IDENTIFICAR:
		identificar()
		break
	case OPTIONS.PREPARAR_PARA_COLETA:
		preparar_para_coleta()
		break
	case OPTIONS.CRONOMETRAR_COLETA:
		cronometrar_coleta()
		break
	case OPTIONS.MAIS_1_MINUTO:
		mais_1_minuto()
		return
		break
	case OPTIONS.MENOS_1_MINUTO:
		menos_1_minuto()
		return
		break
	case OPTIONS.ACELERAR_CONTAGEM:
		acelerar_contagem()
		break
	case OPTIONS.FINALIZAR_TUTORIAL:
		finalizar_tutorial()
		break
	case OPTIONS.REMOVER_PERA:
		remover_pera()
		break
	case OPTIONS.IDENFICIAR_NOME:
		get_input("Marque o recipiente", function(_text) {
			name = _text
		})
		break
}

// Clean up
instance_destroy(obj_menu)