function gmcallback_teste(_target_room_name) {
	try {
		var _target_room = asset_get_index(_target_room_name);

		if (typeof(_target_room) == asset_room) {
			throw string_concat(
				"_target_room_name: ",
				_target_room_name,
				" is not a room"
			);
		}
		room_goto(_target_room);
	} catch (e) {
		show_debug_message("Caught exception: " + e.message);
	}
}
