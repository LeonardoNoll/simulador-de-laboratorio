//on_release = function(){
    var _egg = instance_nearest(x, y, obj_egg);

    if (_egg != noone && point_distance(x, y, _egg.x, _egg.y) < 50){
        draw_a_line(_egg);
    }
//}
