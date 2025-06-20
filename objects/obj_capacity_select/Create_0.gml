// Inherit the parent event
event_inherited();

paddingx = 30
values = ["Baixa", "Intermediária", "Boa"]
current_index = 1
text = values[current_index]
instance_create_depth(x + width - paddingx, y+ height/2, depth-1, obj_arrow_capacity_next)
instance_create_depth(x + paddingx, y+ height/2, depth-1, obj_arrow_capacity_previous)