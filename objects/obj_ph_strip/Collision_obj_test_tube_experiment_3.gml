show_debug_message(other);

if (counting) {
	return;
}
if (is_undefined(other.content)) {
	return;
}
if (other.content.ph == 0) {
	return;
}
if (other.closed) {
	return 
}

counting = true;
reference = other;
alarm_set(0, 60);
