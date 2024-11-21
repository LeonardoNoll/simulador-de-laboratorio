messages = ds_list_create();
message_id = 0;
messageText = "";
enum MSG { TEXT }

initialized = false;

var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();

height = 200;
width = 400;

hitbox_left = x;
hitbox_right = x + width;
hitbox_top = y;
hitbox_bottom = y + height;

padding = 15;

//x = 100; // Example X position
//y = _guiH - height; // Example Y position

initialized = true;
