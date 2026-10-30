if (!other.drag_mode || other.deposit_locked) return

if (tampado) {
	create_textbox(other.x, other.y, "Destampe a placa antes de adicionar o material.")
	other.deposit_locked = true
	return
}

if (dentina == 2 && esmalte == 2 && acidulado == 0 && neutro == 0) {
	sprite_index = s_placa_de_4_pocos_22b
	neutro += 1
} else if (dentina == 2 && esmalte == 2 && acidulado == 1 && neutro == 0) {
	sprite_index = s_placa_de_4_pocos_22ab
	neutro += 1
} else {
	return
}

other.deposit_locked = true
