function autoclave(){
	
	expected_minutes = 15
	
	var _cronometer_x = room_width - 190
	var _cronometer_y = 190
	//var _cronometer_y = 120 // um pouco mais para cima 
	var _cronometer = instance_create_layer(_cronometer_x, _cronometer_y, "GUI", obj_cronometer)
	
	_cronometer.on_count_start = function () {
		if(global.particle_sys != noone) {
				part_system_destroy(global.particle_sys)
		}
	}
	
	/*_cronometer.on_count_sucess = function() {
			
	}*/
			
	_cronometer.on_count_fail = function () {
		create_textbox(x + sprite_width, y, ["Você cronometrou o tempo errado"]);
	}
	options = []
	return
}


/*minutes = 0
seconds = 0
minutes_elapsed = 0
last_update_time = current_time
counting_down = false
fast_forward = false
expected_minutes = 5

on_count_start = function () {}
on_count_fail = function () {}
on_count_sucess = function () {}

name = "Cronômetro"
locked = true
options = [
	OPTIONS.MAIS_1_MINUTO,
	OPTIONS.MENOS_1_MINUTO,
	OPTIONS.CRONOMETRAR
]*/ 



