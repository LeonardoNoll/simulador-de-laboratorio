// As opções do switch devem cobrir todas os itens existentes
// no array "OPTIONS", que pertence ao obj_game. Opções
// com "return" antes do "break" não fecharão o menu imediatamente.

switch(option) {
	case OPTIONS.CALCAR:
		put_on()
		break
	case OPTIONS.VERIFICAR:
		verify()
		break
	case OPTIONS.DIAGNOSTICAR:
		diagnose()
		return
		break
	case OPTIONS.EXTRAIR_CONTEUDO:
		extract_content()
		break
	case OPTIONS.HIPOSSALIVACAO:
		if(room == rm_1b_normal) verify_answer(0, 0.1)
		else verify_answer(0, 0.7)
		break
	case OPTIONS.POUCA_SALIVACAO:
		if(room == rm_1b_normal) verify_answer(0.1, 0.25)
		else verify_answer(0.7, 1)
		break
	case OPTIONS.SALIVACAO_NORMAL:
		if(room == rm_1b_normal) verify_answer(0.25, 0.35)
		else verify_answer(1, 3)
		break
	case OPTIONS.IDENTIFICAR:
		identify()
		break
	case OPTIONS.PREPARAR_PARA_COLETA:
		prepare_to_collect()
		break
	case OPTIONS.CRONOMETRAR:
		time_collection()
		break
	case OPTIONS.MAIS_1_MINUTO:
		plus_1_minute()
		return
		break
	case OPTIONS.MENOS_1_MINUTO:
		minus_1_minute()
		return
		break
	case OPTIONS.ACELERAR_CONTAGEM:
		speed_up_cronometer()
		break
	case OPTIONS.FINALIZAR_TUTORIAL:
		end_tutorial()
		break
	case OPTIONS.REMOVER_PERA:
		remove_pear()
		break
	case OPTIONS.IDENFICIAR_RECIPIENTE:
		identify_recipient()
		break
	case OPTIONS.REIDENFICIAR_RECIPIENTE:
		identify_recipient()
		break
	case OPTIONS.ABRIR_TUBO_DE_ENSAIO: 
		open_test_tube()
		break
	case OPTIONS.FECHER_TUBO_DE_ENSAIO:
		close_test_tube()
		break
	case OPTIONS.AGITAR:
		shake()
		break
	case OPTIONS.SUBSTITUIR_PIPETA:
		change_pipette()
		break
	case OPTIONS.PASSAR_LIQUIDO_AO_BEQUER:
		pass_liquid_to_becker(15,global.selected.becker, s_marked_becker_with_HCl)
		break
	case OPTIONS.ABRIR_CENTRIFUGA:
		open_centrifuge()
		break
	case OPTIONS.FECHAR_CENTRIFUGA:
		close_centrifuge()
		break
	case OPTIONS.REMOVER_ITENS:
		remove_itens_from_centrifuge()
		break
	case OPTIONS.MUDAR_COR:
		mudarCor()
		break;
	default: 
		create_textbox(x, y, ["Função não setada"])
		break
}

instance_destroy(obj_context_menu)