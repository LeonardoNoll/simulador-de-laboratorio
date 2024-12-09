function vestir(){
	with (obj_inventory) {
		array_push(itens, global.selected.object_index)
		instance_destroy(global.selected)
	}
}