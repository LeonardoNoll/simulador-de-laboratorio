global.liquids_experiment_4 = {
	saliva: {
		id: "saliva",
		color: #333333,
		name: "Saliva Dil. 5x",
		mix_results: {
			distilled_water:"saliva_with_water"
		}
	} ,
	distilled_water: {
		id: "distilled_water",
		color: #333333,
		name: "Agua destilada",
		mix_results: {
			saliva: "saliva_with_water",
			iodine: "iodine_control"
		}
	},		
	starch: {
		id:"starch",
		color: #333333,
		name: "Solução de Amido 1%",
		mix_results: {
			iodine_control: {
				result:"starch_control",
				ml: 1
			}
		}
	},
	iodine: {
		id: "iodine",
		color: #121212,
		name: "Iodo",
		mix_results: {
		}
	},
	iodine_control: {
		id: "iodine_control",
		color: #333333,
		name: "Controle de Iodo",
	},
	starch_control: {
		id: "starch_control",
		color: #111111,
		name: "Controle de Amido"
	}
}

global.test_tubes_experiment_4 = {
	starch_control: {
		id: "starch_control",
		name: "Controle de Amido",
		liquids: {
			distilled_water: 3,
			iodine: 2,
			starch: 1
		}
	},
	iodine_control: {
		id: "iodine_control",
		name: "Controle de Iodo",
		liquids: {
			distilled_water: 3,
			iodine: 2
		}
	},
	distilled_saliva: {
		id: "distilled_saliva",
		name: "Saliva Diluida",
		liquids: {
			saliva: 1,
			distilled_water: 4
		}
	}
}
