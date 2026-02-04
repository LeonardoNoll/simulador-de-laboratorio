global.liquids_experiment_4 = {
		saliva: {
			id: "saliva",
			color: #333333,
			name: "Saliva Dil. 5x",
			mix_results: {
				destiled_water:"saliva_with_water"
			}
		} ,
		destiled_water: {
			id: "destiled_water",
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
					result:"startch_control",
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
		startch_control: {
			id: "startch_control",
			color: #111111,
			name: "Controle de Amido"
		}
}

//TOOD: continuar colocando os liquidos e fazer a função can_mix