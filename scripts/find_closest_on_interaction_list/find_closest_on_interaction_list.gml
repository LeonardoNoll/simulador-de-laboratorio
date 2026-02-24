function find_closest_on_interaction_list(_interaction_list){
	var _others = ds_list_create()
	instance_place_list(x,y, _interaction_list, _others, true)
	var _other = ds_list_find_value(_others, 0)
}