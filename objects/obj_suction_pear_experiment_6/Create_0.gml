// Inherit the parent event
event_inherited();

name = "Pera de sucção"
needed_EPI = [obj_lab_coat]
scale_on_contact_list = [obj_pipette_50ml_experiment_6, obj_pipette_20ml_experiment_6, obj_pipette_5ml_experiment_6]

pipette_scale_on_contact_list = [obj_glass_jar_experiment_6, obj_saliva_artificial];
pipette_on_release = colect_saliva


on_release = put_pear_on
