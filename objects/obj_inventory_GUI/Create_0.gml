itens = []

var _size = 40
var _x_spacing = 140
var _y_spacing = 75

for (var i  = 0 ; i < array_length(obj_inventory_btn.itens); i++) {
		var _xx = x + _x_spacing * (i - (i > 4 ? 7 : 2)) 
		var _yy = y + (i > 4 ? +_y_spacing : -_y_spacing)		
		var _currItem = array_push(itens, instance_create_depth(_xx, _yy, depth-1, obj_inventory_btn.itens[i]))
		itens[i].equipable = false
}