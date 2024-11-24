function equipar(){
	if(instance_exists(obj_inventory)){
		_inventory = instance_nearest(0, 0, obj_inventory)
		array_push(_inventory.itens, global.selected.object_index)
		show_debug_message(_inventory.itens)
		show_debug_message(array_contains(_inventory.itens, obj_gloves))
	}
	instance_destroy(global.selected)
}
