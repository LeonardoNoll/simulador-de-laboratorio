if (!other.drag_mode || other.deposit_locked) return

if (tampado) {
	create_textbox(other.x, other.y, "Destampe a placa antes de adicionar o material.")
	other.deposit_locked = true
	return
}

if (esmalte == 0 && dentina == 0) {
	sprite_index = s_placa_de_4_pocos_10
	esmalte += 1
} else if (esmalte == 1 && dentina == 0) {
	sprite_index = s_placa_de_4_pocos_20
	esmalte += 1
} else if (esmalte == 0 && dentina == 1) {
	sprite_index = s_placa_de_4_pocos_11
	esmalte += 1
} else if (esmalte == 1 && dentina == 1) {
	sprite_index = s_placa_de_4_pocos_21
	esmalte += 1
} else if (esmalte == 1 && dentina == 2) {
	sprite_index = s_placa_de_4_pocos_22
	esmalte += 1
} else if (esmalte == 0 && dentina == 2) {
	sprite_index = s_placa_de_4_pocos_12
	esmalte += 1
} else {
	return
}

other.deposit_locked = true
