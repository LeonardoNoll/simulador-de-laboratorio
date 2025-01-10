// Box
draw_set_alpha(0.9)
draw_set_color(c_orange)
draw_roundrect(x-400, y-200, x+400, y+200, false)
draw_set_color(c_white)
draw_set_alpha(1)
draw_roundrect(x-400, y-200, x+400, y+200, true)

// Close btn
var _x_btn = instance_create_depth(x+400, y-200, depth-1, obj_btn_x)
_x_btn.parent = self
	