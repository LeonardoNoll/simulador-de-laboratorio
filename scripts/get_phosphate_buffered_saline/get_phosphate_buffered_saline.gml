function get_phosphate_buffered_saline(){
	
	var cb = function(_text){
		var _micropipette = instance_nearest(x, y, obj_micropipette)
		
		if(real(_text) == 1){ // verifica se o valor está correto
			_micropipette.name = "Micropipeta com 1mL de tampão fosfato"
		}else{
			create_textbox(_micropipette.x , _micropipette.y, "Este não é o valor correto.")
		}
	}
	get_input(x+33,y+25, "Quantidade de mL", cb)
}