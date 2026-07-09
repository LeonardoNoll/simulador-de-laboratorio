function array_instance_nearest(list_of_objects){
if (array_length(list_of_objects) == 0) return noone

var closest = list_of_objects[0]
var closest_dist = distance_to_object(closest)

for (var i = 1; i < array_length(list_of_objects); i++) {
     var dist = distance_to_object(list_of_objects[i])
     if (dist < closest_dist) {
        closest = list_of_objects[i]
        closest_dist = dist
     }
}

return closest
}