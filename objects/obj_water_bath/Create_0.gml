event_inherited()

name = "Banho Maria"
locked = true

temperature = 0
shaking = false
erlenmeyer = noone
depth = -1

options = [OPTIONS.USAR_BANHO_MARIA]

show_debug_message("USAR_BANHO_MARIA: " + string(OPTIONS.USAR_BANHO_MARIA));
show_debug_message("ABRIR: " + string(OPTIONS.ABRIR));

var _game = instance_find(obj_game, 0);

show_debug_message("Texto correspondente: " + _game.options_string[OPTIONS.USAR_BANHO_MARIA]);