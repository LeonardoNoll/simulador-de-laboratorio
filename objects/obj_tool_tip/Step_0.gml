/// @description Insert description here
// You can write your code in this editor
x = mouse_x + 24
y = mouse_y





image_alpha = lerp(image_alpha, 0, 0.05);

if (image_alpha < 0.05)
{
instance_destroy();
}


