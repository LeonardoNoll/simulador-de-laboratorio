switch(option) {
	case OPTIONS.EQUIPAR:
		equipar()
		break
	case OPTIONS.VERIFICAR:
		verificar()
		break
	case OPTIONS.ABRIR:
		abrir()
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
}
//instance_destroy(instance_nearest(x-100, y, obj_menu)) -- gambiarra desnecessaria
instance_destroy(obj_menu)