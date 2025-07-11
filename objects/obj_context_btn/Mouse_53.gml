var _context_btn = collision_point(mouse_x,mouse_y,obj_context_btn, false, false)

if(_context_btn == noone || _context_btn.object_index != obj_context_btn) {
	instance_destroy(obj_context_menu)
}