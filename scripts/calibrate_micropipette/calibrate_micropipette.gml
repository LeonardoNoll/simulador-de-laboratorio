// calibra a micropipeta 
function calibrate_micropipette(){
	
	var cb = function(_text) {
		
		var _micropipette = instance_nearest(x, y, obj_micropipette)
		//verifica se o valor está correto
		if (real(_text) == 1000) {
			_micropipette.name = "micropipeta calibrada em 1000 uL"
			_micropipette.calibrated = true
        }else{
	        create_textbox(_micropipette.x, _micropipette.y, "Este não é o valor correto. Tente novamente.")
	    }
	}
	get_input(x+33, y-25, "Quantidade de volume (uL)", cb)
}