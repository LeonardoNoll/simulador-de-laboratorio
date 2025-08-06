var _is_mouse_hovering = (
	median(x - padding, x + padding, mouse_x) == mouse_x
	&& median(y - padding, y + padding, mouse_y) == mouse_y
)
	
if(equipable && _is_mouse_hovering) {
		instance_destroy(self)
		array_push(obj_inventory_btn.itens, self.object_index)
		array_delete(obj_locker_btn.itens, array_get_index(obj_locker_btn.itens, self.object_index), 1)
}	