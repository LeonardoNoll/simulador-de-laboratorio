var _last_index = ds_list_size(global.previous_room)-1

room_goto(global.previous_room[| _last_index])
ds_list_delete(global.previous_room, _last_index)
