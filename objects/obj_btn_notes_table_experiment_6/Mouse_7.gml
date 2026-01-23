// Inherit the parent event
event_inherited();
instance_create_depth(350, 80, depth-1, obj_notes_table_experiment_6)

for(var i = 0; i < array_length(texts); i++) {
	instance_find(obj_writable_cell_experiment_6,i).text = texts[i]
}


