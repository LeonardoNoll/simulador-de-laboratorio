if(instance_exists(obj_locker)) {
	instance_destroy(obj_locker)
}
instance_create_layer(room_width/2, room_height/2, "GUI", obj_locker)