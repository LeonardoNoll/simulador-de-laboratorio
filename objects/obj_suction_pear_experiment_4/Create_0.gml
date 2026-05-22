// Inherit the parent event
event_inherited();

pipette_scale_on_contact_list = [
	obj_solucao_amido,
	obj_test_tube_experiment_4,
	obj_erlenmeyer_experiment_4,
	obj_falcon_tube
];
pipette_on_release = collect_liquid;

on_release = put_pear_on;