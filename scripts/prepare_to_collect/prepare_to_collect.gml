function prepare_to_collect(){
	if(instance_nearest(0,0,obj_patient_head).pronto_para_coleta) {
		with (global.selected) {
			var _cronometer_x = room_width - 190
			var _cronometer_y = 190
			var _cronometer = instance_create_layer(_cronometer_x, _cronometer_y, "GUI", obj_cronometer)
			// Definir comportamente do inicio da contagem
			_cronometer.on_count_start = function () {
				if(global.particle_sys != noone) {
					part_system_destroy(global.particle_sys)
				}
			}
			_cronometer.on_count_sucess = function() {
				if(room = rm_1a_normal) room_goto(rm_1b_normal);
				else room_goto(rm_1b_estimulada);
			}
			_cronometer.on_count_fail = function () {
				create_textbox(x + sprite_width, y, ["Você cronometrou o tempo errado"]);
			}
			options = []
			return
		}
	}
		create_textbox(mouse_x+1, mouse_y-100, ["Você não pode fazer a coleta ainda. Posicione o paciênte em uma posição de 45º.", "Em seguida, posicione o becker corretamente."])
}