cursor_timer += 1;
if (cursor_timer >= cursor_interval) {
	cursor_visible = !cursor_visible;
	cursor_timer = 0;
}