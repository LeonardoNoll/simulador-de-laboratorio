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
		break
}
instance_destroy(obj_menu)