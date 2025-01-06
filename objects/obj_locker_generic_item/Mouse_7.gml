instance_destroy(self)
array_push(obj_inventory.itens, self.object_index)
//layer_sequence_create("Sequences", global.selected.x, global.selected.y, seq_calcar)


show_debug_message(self.object_index)
array_delete(obj_locker_btn.itens, array_get_index(obj_locker_btn.itens, self.object_index), 1)
