function array_instance_nearest(list_of_objects){
if (array_length(list_of_objects) == 0) return noone

var closest_instance = noone;
var closest_dist = 0;

for (var i = 0; i < array_length(list_of_objects); i++) {
    var _nearest = instance_nearest(x, y, list_of_objects[i]);
    if (_nearest == noone) continue;

    var _dist = point_distance(x, y, _nearest.x, _nearest.y);
    if (closest_instance == noone || _dist < closest_dist) {
        closest_dist = _dist;
        closest_instance = _nearest;
    }
}

return closest_instance;
}