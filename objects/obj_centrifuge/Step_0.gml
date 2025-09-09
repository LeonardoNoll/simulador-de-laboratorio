event_inherited();

var _interval = fast_forward ? 10 : 1000

if (counting_down) {
    var _second_has_passed = current_time - last_update_time >= _interval; 

    if (_second_has_passed) {
        last_update_time = current_time;

        if (seconds == 0) {
            counting_down = false;
            if (seconds_elapsed == EXPECTED_SECONDS && rpm == 3000) {
				obj_falcon_tube.centrifuged = true
				obj_falcon_tube.name = "Tubo falcon 10ml centrifugado"
				scale_pulse(self, 2, 0.15)
            } else {
				create_textbox(x,y, "Você não realizou a centrifugação de acordo com o roteiro!")
            }
			seconds_elapsed = 0
			options = [OPTIONS.ABRIR_CENTRIFUGA]
            return;
        } 

        seconds--;
		seconds_elapsed++
    }
}
