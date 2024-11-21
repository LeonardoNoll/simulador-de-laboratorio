// Ensure mouse checks are in the same coordinate system
var gui_mouse_x = device_mouse_x_to_gui(0);
var gui_mouse_y = device_mouse_y_to_gui(0);

// Check if the mouse is within the hitbox
if (gui_mouse_x > hitbox_left && gui_mouse_x < hitbox_right && gui_mouse_y > hitbox_top && gui_mouse_y < hitbox_bottom) {
    if (message_id < ds_list_size(messages) - 1) {
        message_id++;
    } else {
        instance_destroy(); 
    }
}