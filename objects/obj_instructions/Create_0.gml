var _btn_x_y_adjustment = -205
var _btn_x_x = x + sprite_width/2
var _btn_x_y = y - sprite_height/2

btn_x = instance_create_depth(_btn_x_x, _btn_x_y, depth-1, obj_btn_x)
btn_x.parent = self