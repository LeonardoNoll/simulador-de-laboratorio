draw_set_color(c_aqua)
draw_roundrect(x-400, y-200, x+400, y+200, false)
draw_set_color(c_white)

var _x_btn = instance_create_depth(x+400, y-200, depth-1, obj_btn_x)
_x_btn.parent = self
	