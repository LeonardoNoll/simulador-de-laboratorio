// Inherit the parent event
event_inherited();

name = "Pera de sucção"
needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
scale_on_contact_list = [obj_pipette_50ml_experiment_6, obj_pipette_5ml_experiment_6]

pipette_scale_on_contact_list = [obj_glass_jar_experiment_6, obj_saliva_artificial];
pipette_on_release = function(){
create_textbox(x,y,"função on release")
}

on_release = put_pear_on
