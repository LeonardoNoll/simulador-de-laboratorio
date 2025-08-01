event_inherited();

var _interval = fast_forward ? 10 : 1000

if (counting_down) {
    var _second_has_passed = current_time - last_update_time >= _interval; 

    if (_second_has_passed) {
        last_update_time = current_time;

        if (seconds == 0) {
            counting_down = false;
			fast_forward = false;

            if (seconds_elapsed == EXPECTED_SECONDS && rpm == 3000) {
				create_textbox(x,y, ["Sucesso"])
            } else {
				create_textbox(x,y, ["Falha"])
            }
            return;
        } 

        seconds--;
		seconds_elapsed++
    }
}
