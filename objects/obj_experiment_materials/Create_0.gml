name = "Materiais do experimento"
tool_tip = noone
activated = false
experiment_materials_btns_positions = []

if(!is_array(experiment_materials_btns) || array_length(experiment_materials_btns) == 0) return 

for(var i = 0; i < array_length(experiment_materials_btns); i++){
		array_push(experiment_materials_btns_positions, experiment_materials_btns[i].y)
}