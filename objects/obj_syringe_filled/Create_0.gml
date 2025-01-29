event_inherited()

options = [
	OPTIONS.VERIFICAR,
	OPTIONS.DIAGNOSTICAR
]

//Segundo caso representa salivação estimulada 
ml = room = rm_1b_normal ? random_range(0.01, 1.75) : random_range(0.01, 15) 
on_rack = false
rackX = 0
rackY = 0

name = "Seringa com amostra"