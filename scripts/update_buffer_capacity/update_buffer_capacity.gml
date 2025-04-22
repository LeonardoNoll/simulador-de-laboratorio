function update_buffer_capacity(_value){
	with(obj_capacity_select) {
		current_index += _value
		text = values[current_index]
		switch(current_index) {
			case 0: 
				instance_destroy(obj_arrow_capacity_previous)
				break
			case 1:
				if(!instance_exists(obj_arrow_capacity_previous)) 
					instance_create_depth(x + paddingx, y + height/2, depth, obj_arrow_capacity_previous)
				if(!instance_exists(obj_arrow_capacity_next))
					instance_create_depth(x + width - paddingx, y + height/2, depth, obj_arrow_capacity_next)			
				break
			case 2:
				instance_destroy(obj_arrow_capacity_next)
				break
		}
	}
}