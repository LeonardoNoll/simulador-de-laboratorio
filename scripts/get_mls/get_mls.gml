function get_mls(){
	//var _hitlist = [obj_acid_bottle, obj_stimulated_saliva, obj_distiled_water, obj_25ml_becker]
	var _hitlist = [obj_25ml_becker]
	if(place_meeting(mouse_x,mouse_y, _hitlist)) {
		var _others = ds_list_create()
		instance_place_list(mouse_x,mouse_y, _hitlist, _others, true)
		var _other = ds_list_find_value(_others, 0)
		
		ph = _other.ph
		content = _other.content
		
		get_input(mouse_x,mouse_y,"Mls a coletar", function(_text) {	
			_mls = real(string_digits(_text))
			if(_mls > (object_index == obj_pipett_10ml ? 10 : 5)) {
				criar_textbox(mouse_x, mouse_y, ["Esta pipeta não suporta essas quantia de mls!"])
				return
			}\
			name = "Pipeta com " + string(_mls) + "ml(s) de " + content
			ml = _mls
			on_release = function() {
				if(place_meeting(mouse_x,mouse_y,obj_25ml_becker)) {
					pass_liquid_to_becker(ml, self, ml == 2 ? s_marked_becker_with_HCl : s_marked_becker_with_water)
				} else if(place_meeting(mouse_x,mouse_y, obj_test_tube)) {
					pass_liquid_to_test_tube(ml, self, ph == 2 ? s_test_tube_HCl : s_test_tube_water)
				}
			}
		})
		ds_list_destroy(_others)
	}
}