global.liquids_experiment_4 = {
	saliva: {
		id: "saliva",
		color: #00FFFF,
		name: "Saliva Diluida",
		mix_results: {
			distilled_water:"distilled_saliva"
		}
	} ,
	distilled_water: {
		id: "distilled_water",
		color: #00FFFF,
		name: "Agua destilada",
		mix_results: {
			saliva: "distilled_saliva",
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
		color: #663600,
		name: "Iodo",
		mix_results: {
		}
	},
	iodine_control: {
		id: "iodine_control",
		color: #543105,
		name: "Controle de Iodo",
	},
	starch_control: {
		id: "starch_control",
		color: #111111,
		name: "Controle de Amido"
	},
	distilled_saliva: {
		id: "distilled_saliva",
		color: #00FFFF,
		name: "Saliva Dil. 5x"
	},
	erlenmeyer_mix: {
		id: "erlenmeyer_mix",
		color: c_fuchsia,
		name: "Mix Erlenmeyer"
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
			distilled_water: 4,
			iodine: 2
		}
	},
	distilled_saliva: {
		id: "distilled_saliva",
		name: "Saliva Dil. 5x",
		liquids: {
			saliva: 1,
			distilled_water: 4
		}
	},
	"0": {
		id: 0,
		name: "0",
		liquids: {
			saliva: 1,
			distilled_water: 3,
			iodine: 2
		}
	}
}