global.liquids_experiment_4 = {
	saliva: new LiquidDef("saliva", #00FFFF, "Saliva Diluida", {
		distilled_water: "distilled_saliva"
	}),
	distilled_water: new LiquidDef("distilled_water", #00FFFF, "Agua destilada", {
		saliva: "distilled_saliva",
		iodine: "iodine_control",
		starch: "distilled_water_starch"
	}),		
	starch: new LiquidDef("starch", #333333, "Solução de Amido 1%", {
		iodine_control: {
			result: "starch_control",
			ml: 1
		}
	}),
	iodine: new LiquidDef("iodine", #663600, "Iodo"),
	iodine_control: new LiquidDef("iodine_control", #543105, "Controle Iodo"),
	starch_control: new LiquidDef("starch_control", #111111, "Controle Amido"),
	distilled_saliva: new LiquidDef("distilled_saliva", #00FFFF, "Saliva Dil. 5x"),
	erlenmeyer_mix: new LiquidDef("erlenmeyer_mix", c_fuchsia, "Mix Erlenmeyer"),
	distilled_water_starch: new LiquidDef("distilled_water_starch", c_blue, "Água Destilada com Amido", {
		iodine: "starch_control",
	})
}



global.test_tubes_experiment_4 = {
	starch_control: new TestTubeDef("starch_control", "Controle Amido", {
		distilled_water: 3,
		iodine: 2,
		starch: 1
	}),
	iodine_control: new TestTubeDef("iodine_control", "Controle Iodo", {
		distilled_water: 4,
		iodine: 2
	}),
	distilled_saliva: new TestTubeDef("distilled_saliva", "Saliva Dil. 5x", {
		saliva: 1,
		distilled_water: 4
	})
}

var _tubes_to_add = 7;
for (var i = 0; i <= _tubes_to_add; i++) {
	var _name = string(i);
	global.test_tubes_experiment_4[$ _name] = new TestTubeDef(i, _name);
}