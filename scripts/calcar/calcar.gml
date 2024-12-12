function calcar(){
	with (obj_inventory) {
		array_push(itens, global.selected.object_index)
		layer_sequence_create("Sequences", global.selected.x, global.selected.y, seq_calcar)
		instance_destroy(global.selected)
	}
}