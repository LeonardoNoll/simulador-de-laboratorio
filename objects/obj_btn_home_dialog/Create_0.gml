/// @description Insert description here
// You can write your code in this editor
width = 200
height = 150
x1 = x-width/2
x2 = x+width/2
y1 = y-height/2
y2 = y+height/2

instance_create_depth(x - 50, y + 20, depth-1, obj_btn_home_accept)
instance_create_depth(x + 50, y + 20, depth-1, obj_btn_home_decline)

