function open_modal(){
	instance_create_layer(0,0,layer_create(200,"Modal"), obj_modal_controller)
	global.modal_open = true
}