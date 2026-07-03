// Inherit the parent event
event_inherited();

name = "Pera de sucção"
needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
scale_on_contact_list = [obj_pipette_50ml_experiment_6]

pipette_scale_on_contact_list = [];
pipette_on_release = collect_liquid;

on_release = put_pear_on
