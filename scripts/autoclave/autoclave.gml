// liga a autoclave
function autoclave(){
	
	// verifica a pressão
	function check_pressure(_text){
		if (real(_text) != 15) {
            create_textbox(mouse_x, mouse_y, ["Este não é o valor correto. Tente novamente."])
          
            get_input(x - 5, y - 25, "Libras de pressão:", check_pressure)
		}
	}
	
    get_input(x - 5, y - 25, "Libras de pressão:", check_pressure)
	
	// verifica se o cronômetro existe 
	if (instance_exists(obj_cronometer)) {
        return
    }
	
	// cria o cronômetro 
    instance_create_layer(
        room_width - 190, 120, "GUI", obj_cronometer
    )

    obj_cronometer.on_count_sucess = function() {

        create_textbox(x + sprite_width, y,
            ["O frasco já pode ser retirado da autoclave."])

        with (obj_autoclave) {
            options = [OPTIONS.REMOVER_FRASCO]
        }
        // destrói o cronômetro
        with (obj_cronometer) instance_destroy()
    }
   
    obj_cronometer.on_count_fail = function () {

        create_textbox(x + sprite_width, y,
            ["Você cronometrou o tempo errado. Tente novamente"])
        with (obj_cronometer) instance_destroy()
    }

}

