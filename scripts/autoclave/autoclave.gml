// liga a autoclave

function autoclave(){
	
	var lb = function(_text) {
		//verifica se o valor está correto
	        if (string_digits(_text) != 15) {
				// mensagem de erro
	            create_textbox(mouse_x, mouse_y, ["Esta não é a quantia correta. Tente novamente."])
	        } 
	}
	
	get_input(x-5, y-25, "Libras de pressão:", lb);
	
	var _cronometer_x = room_width - 190
	var _cronometer_y = 120
	var _cronometer = instance_create_layer(_cronometer_x, _cronometer_y, "GUI", obj_cronometer)
	
	
	_cronometer.on_count_start = function () {
		if(global.particle_sys != noone) {
				part_system_destroy(global.particle_sys)
		}
	}
	
	_cronometer.on_count_sucess = function() {
			create_textbox(x + sprite_width, y, ["O frasco já pode ser retirado da autoclave."])
			// permite remover o frasco da autoclave
			with (obj_autoclave) {
				options = [OPTIONS.REMOVER_FRASCO];
			}
	}
			
	_cronometer.on_count_fail = function () {
		create_textbox(x + sprite_width, y, ["Você cronometrou o tempo errado. Tente novamente"])
	}
	options = []
	return
}

