if(obj_centrifuge.sprite_index == s_centrifuge_open) {
	create_textbox(x, y, ["A centrífuga não pode ser iniciada se estiver aberta."])
	return
}

obj_centrifuge.options = []
obj_centrifuge.counting_down = true
obj_centrifuge_visor.display_mode = DISPLAY_MODES.TIME