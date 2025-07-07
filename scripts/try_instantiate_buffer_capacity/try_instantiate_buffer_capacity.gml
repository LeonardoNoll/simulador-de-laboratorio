function try_instantiate_buffer_capacity(){
	for (var i = 0; i < instance_number(obj_test_tube); i++) {
		var _curr_test_tube = instance_find(obj_test_tube, i)
		
		if (_curr_test_tube.content == "HCl + Saliva estimulada" && _curr_test_tube.ph >= 4) {
		//if(true){
			instance_create_depth(x, y+margin_top + cell_height*3, depth-1, obj_buffer_capacity)
			return
		}
	}
	
}