itens = []

var _size = 40
var _x_spacing = 140
var _y_spacing = 75

for (var i  = 0 ; i < array_length(obj_locker_btn.itens); i++) {
		var _xx = x + _x_spacing * (i - (i > 4 ? 7 : 2)) 
		var _yy = y + (i > 4 ? +_y_spacing : -_y_spacing)		
		array_push(itens, instance_create_depth(_xx, _yy, depth-1, obj_locker_btn.itens[i]))
}