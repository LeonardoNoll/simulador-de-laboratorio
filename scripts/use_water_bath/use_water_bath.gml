function use_water_bath(){
	close_ui_elements()
	open_modal()
	instance_create_layer(room_width/2, room_height/2, "GUI", obj_water_bath_ui)
}