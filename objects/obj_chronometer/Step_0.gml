/// @description Atualiza a lógica do cronômetro a cada segundo
var _interval = fast_forward ? 10 : 1000

if (counting_down) {
    var current = current_time; // Obtém o horário atual em milissegundos

    // Verifica se um segundo se passou
    if (current - last_update_time >= _interval) {
        last_update_time = current; // Atualiza o último horário registrado

        // Verifica se o cronômetro já atingiu 0:00
        if (minutes == 0 && seconds == 0) {
            counting_down = false; // Para o cronômetro
			fast_forward = false; // Reseta a aceleração
           // show_debug_message("Minutos Decorridos: " + string(minutes_elapsed));

			on_count_start()
			
            // Lida com a lógica de expiração
            if (minutes_elapsed == expected_minutes) {
				on_count_sucess()
            } else {
                on_count_fail()
            }
			
			minutes_elapsed = 0; // Reinicia o tempo decorrido
            return; // Para a execução adicional deste frame
        }

        // Decrementa os segundos e ajusta os minutos, se necessário
        seconds--;
        if (seconds < 0) {
            seconds = 59; // Reinicia os segundos
            minutes--;    // Decrementa os minutos
            if (minutes >= 0) {
                minutes_elapsed++; // Incrementa apenas quando um minuto completo passar
            }
        }

        // Depuração: Mostra o horário atual
        //show_debug_message("Tempo Restante: " + string(minutes) + ":" + (seconds < 10 ? "0" : "") + string(seconds));
    }
}
