// Calculate number of lines dynamically (based on the full width, ignoring scale)
draw_set_font(fnt_text); // Needs to be here, otherwise may cause hight errors
var line_height = string_height("A"); // Base height of one line
var text_height = string_height_ext(messageText, -1, width - padding * 2); 
var num_lines = ceil(text_height / line_height); // Calculate the number of lines

// Animation Progress
popup_timer = min(popup_timer + 1, popup_duration); // Increment the timer up to the duration
var popup_progress = popup_timer / popup_duration; // Progress from 0 to 1

// Easing (for smooth scaling)
var scale_factor = lerp(0.5, 1.0, popup_progress); // Start at 0.5, go to 1.0

// Apply scaling to the visual representation
var draw_width = width * scale_factor;
var draw_height = (num_lines * line_height + padding * 2) * scale_factor;
var draw_x = x + (width - draw_width) / 2;
var draw_y = y + ((num_lines * line_height + padding * 2) - draw_height) / 2;

// Draw the box (scaled)
draw_sprite_stretched(s_text_box_9slice, 0, draw_x, draw_y, draw_width, draw_height);

// Draw the text if fully scaled(not scaled, based on full container size)
if(popup_progress >= 1) {
	var _drawX = x + padding; // Use original position (unscaled)
	var _drawY = y + padding;
	var _maxW = width - padding * 2; // Use original width (unscaled)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_set_font(fnt_text);
	draw_set_color(c_black);
	draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);
}

// Create the close button (if the pop-up animation is complete)
if (popup_progress >= 1 && !instance_exists(obj_btn_x)) {
    var _btn_x = instance_create_depth(x + width - 5, y, depth - 1, obj_btn_x);
    _btn_x.parent = self;
}
