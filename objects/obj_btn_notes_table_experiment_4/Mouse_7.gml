// Inherit the parent event
event_inherited();

if(instance_exists(obj_notes_table_experiment_4)) {
	instance_destroy(obj_notes_table_experiment_4)
}

var _row_label_width = 150
var _cell_width = 100
var _col_number = 10
var _table_width = _row_label_width + _cell_width * _col_number

var _table_x = (room_width / 2) - (_table_width / 2)
var _table_y = 120

instance_create_depth(_table_x, _table_y, depth-1, obj_notes_table_experiment_4, {parent: id})

for(var i = 0; i < array_length(texts); i++) {
	instance_find(obj_writable_cell_experiment_4, i).text = texts[i]
}
