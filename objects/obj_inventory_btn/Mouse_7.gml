if(instance_exists(obj_locker)) instance_destroy(obj_locker)
if(instance_exists(obj_inventory_GUI)) instance_destroy(obj_inventory_GUI)

instance_create_layer(room_width/2, room_height/2, "GUI", obj_inventory_GUI)