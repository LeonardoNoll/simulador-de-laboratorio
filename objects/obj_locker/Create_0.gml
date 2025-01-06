itens = []

var _size = 40
var _x_spacing = 140
var _y_spacing = 75

for (var i  = 0 ; i < array_length(obj_locker_btn.itens); i++) {
		var _xx = x + _x_spacing * (i - (i > 4 ? 7 : 2)) 
		var _yy = y - _y_spacing + (i > 4 ? _y_spacing*2  : 0)		
		array_push(itens, instance_create_depth(_xx, _yy, depth-1, obj_locker_btn.itens[i]))
}





		//draw_rectangle(_xx-_size, _yy-_size, _xx + _size, _yy+_size, false)
		//instance_create_depth(_xx, _yy, depth-1, obj_locker_generic_item)