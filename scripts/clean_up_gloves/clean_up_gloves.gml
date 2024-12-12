function clean_up_gloves() {
	with(instance_nearest(0,0,obj_gloves)){
		instance_destroy(self)
	}
}