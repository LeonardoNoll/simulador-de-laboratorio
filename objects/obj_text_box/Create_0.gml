messages = ds_list_create()
message_id = 0;

messageText = "";

enum MSG {
	TEXT,
	NAME 
}

var _guiW = display_get_gui_width()
var _guiH = display_get_gui_height()

height =  floor(_guiH * 0.45)
width = _guiW

x = 0
y = _guiH - height

padding = 15;