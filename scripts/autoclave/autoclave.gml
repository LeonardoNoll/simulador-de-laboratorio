// liga a autoclave

function autoclave(){
	
	// verifica se a quantia está correta
	 var lb = function(_text) {
            if (real(_text) != 15) {
                create_textbox(mouse_x, mouse_y,
                    ["Esta não é a quantia correta. Tente novamente."])
            }
      }

      get_input(x - 5, y - 25, "Libras de pressão:", lb)

      var _cronometer = instance_create_layer(
          room_width - 190, 120, "GUI", obj_cronometer
      )

      _cronometer.on_count_start = function () {
          if (global.particle_sys != noone) {
              part_system_destroy(global.particle_sys)
          }
      }

      _cronometer.on_count_sucess = function() {
          create_textbox(x + sprite_width, y,
              ["O frasco já pode ser retirado da autoclave."])
          with (obj_autoclave) {
              options = [OPTIONS.REMOVER_FRASCO]
          }
      }

      _cronometer.on_count_fail = function () {
          create_textbox(x + sprite_width, y,
              ["Você cronometrou o tempo errado. Tente novamente"])	
      }
        options = [OPTIONS.ABRIR_AUTOCLAVE]
        return
}

