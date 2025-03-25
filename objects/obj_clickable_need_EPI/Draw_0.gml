// Target scale values
var target_xscale = (global.selected == id) ? 1.2 : 1;
var target_yscale = (global.selected == id) ? 1.2 : 1;

// Smoothly transition the scale
image_xscale = lerp(image_xscale, target_xscale, 0.6);
image_yscale = lerp(image_yscale, target_yscale, 0.6);

// Depth adjustment
depth = (global.selected == id) ? 1 : 100;

// Draw the object
draw_self();
