if(equipable) {
	instance_destroy(self)
	array_push(obj_inventory_btn.itens, self.object_index)
	array_delete(obj_locker_btn.itens, array_get_index(obj_locker_btn.itens, self.object_index), 1)
}