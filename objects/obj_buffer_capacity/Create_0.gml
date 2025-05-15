key = instance_create_depth(x,y, depth, obj_base_cell_style)
key.text = "Capacidade tampão"
key.width = 225

value = instance_create_depth(x + key.width, y, depth, obj_capacity_select, {width: 225})

instance_create_depth(x,y+31, depth, obj_capacity_confirm)