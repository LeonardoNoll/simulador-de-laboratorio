// Inherit the parent event
event_inherited();
instance_create_depth(room_width/2, room_height/2, depth-1, obj_notes_table)

for(var i = 0; i < array_length(texts); i++) {
	instance_find(obj_writable_cell,i).text = texts[i]
}


