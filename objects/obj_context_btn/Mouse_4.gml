switch(option) {
	case OPTIONS.EQUIPAR:
		equipar()
		break
	case OPTIONS.CHECAR:
		checar()
		break
	case OPTIONS.SUGAR:
		sugar()
		break
	case OPTIONS.ABRIR:
		global.selected.open = true
		global.selected.options = [OPTIONS.CHECAR]
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
}
//instance_destroy(instance_nearest(x-100, y, obj_menu))
instance_destroy(obj_menu)