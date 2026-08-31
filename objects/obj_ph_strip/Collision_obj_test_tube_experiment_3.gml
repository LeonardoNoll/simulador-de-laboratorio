if (counting) {
	return;
}
if (is_undefined(other.content)) {
	return;
}
if (!variable_struct_exists(other.content, "state") || other.content.state.ph == 0) {
	return;
}
if (other.closed) {
	return
}

counting = true;
reference = other;
alarm_set(0, 60);
