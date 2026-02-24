if (active) {
	
	// define o tamanho da janela 
    var win_width = 640
    var win_height = 480

    // Calcula o canto superior esquerdo para centralizar
    var win_x = (room_width - win_width) / 2
    var win_y = (room_height - win_height) / 2

    // Fundo da janela
    draw_set_color(#2E5077)
    draw_rectangle(win_x, win_y, win_x + win_width, win_y + win_height, false)

    // Contorno
    draw_set_color(c_black)
    draw_rectangle(win_x, win_y, win_x + win_width, win_y + win_height, true)
}