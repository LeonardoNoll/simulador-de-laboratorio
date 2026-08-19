global.liquids_experiment_3 = {
	hcl: new LiquidDef("hcl", #A4D26F, "HCl", {
		saliva_estimulada: { result: "hcl_saliva_mix", ml: 2 },
		agua_destilada: { result: "hcl_agua_mix", ml: 2 }
	}, 1),
	saliva_estimulada: new LiquidDef("saliva_estimulada", #CFE6EE, "Saliva estimulada", {
		hcl: { result: "hcl_saliva_mix", ml: 2 }
	}, 7),
	agua_destilada: new LiquidDef("agua_destilada", #CFE6EE, "Água destilada", {
		hcl: { result: "hcl_agua_mix", ml: 2 }
	}, 7),
	hcl_saliva_mix: new LiquidDef("hcl_saliva_mix", #A4D26F, "HCl + Saliva estimulada", {}, 1),
	hcl_agua_mix: new LiquidDef("hcl_agua_mix", #A4D26F, "HCl + Água destilada", {}, 1)
}

global.test_tubes_experiment_3 = {
	agua: new TestTubeDef("agua", "Agua", {
		hcl: 6,
		agua_destilada: 2
	}),
	saliva: new TestTubeDef("saliva", "Saliva", {
		hcl: 6,
		saliva_estimulada: 2
	})
}
