// Inherit the parent event
event_inherited();

name = "Água destilada"
needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
scale_on_contact_list = [obj_test_tube]
//content = name
ph = 7
test_tube = noone
content_id = "destiled_water"

on_release = try_to_pass_liquid_to_test_tube_experiment_4
