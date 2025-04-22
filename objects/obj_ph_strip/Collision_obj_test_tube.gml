if(!counting && other.ph != 0 && !ph && !other.closed) {
	counting = true
	reference = other
	alarm_set(0,60)
}