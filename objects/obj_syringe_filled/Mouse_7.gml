global.selected = noone
drag_mode = false;

// Rack "collision"
//var _onRackX = mouse.x >= 300 && mouse.x <= 475
//var _onRackY = mouse.y >= 360 && mouse.y <= 460

//if( _onRackX && _onRackY) {
if( x >= 300 && x <= 475 && y >= 360 && y <= 460) {
	base_x = rackX
	base_y = rackY
	on_rack = true
}

y = base_y
x = base_x
