global.selected = noone
randomize()

// Ambos os arrays devem seguir a mesma ordem
// e, para fins de organização, os items devem ter
// o mesmo nome

// Todo item deve ter um "case" equivalente no
// evento Left Released do obj_context_btn

enum	OPTIONS {
	EQUIPAR,
	ABRIR,
	VERIFICAR,
	DIAGNOSTICAR,
	HIPOSSALIVACAO,
	POUCA_SALIVACAO,
	SALIVACAO_NORMAL,
	IDENTIFICAR,
	REALIZAR_COLETA,
	CRONOMETRAR_COLETA,
	MAIS_1_MINUTO,
	MENOS_1_MINUNO,
	ACELERAR_CONTAGEM
}

options_string = [
	"Equipar",
	"Abrir",
	"Verificar",
	"Diagnosticar",
	"Hipossalivação",
	"Pouca salivação",
	"Salivação normal",
	"Identificar",
	"Realizar coleta",
	"Cronometrar coleta",
	"+1 Minuto",
	"-1 Minuto",
	"Acelerar contagem"
]