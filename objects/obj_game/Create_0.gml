global.selected = noone
randomize()

// Ambos os arrays devem seguir a mesma ordem
// e, para fins de organização, os items devem ter
// o mesmo nome

// Todo item deve ter um "case" equivalente no
// evento Left Pressed do obj_context_btn

enum	OPTIONS {
	EQUIPAR,
	ABRIR,
	CHECAR,
	DIAGNOSTICAR,
	HIPOSSALIVACAO,
	POUCA_SALIVACAO,
	SALIVACAO_NORMAL,
	IDENTIFICAR,
	REALIZAR_COLETA,
	CRONOMETRAR_COLETA
}

options_string = [
	"Equipar",
	"Abrir",
	"Checar",
	"Diagnosticar",
	"Hipossalivação",
	"Pouca salivação",
	"Salivação normal",
	"Identificar",
	"Realizar coleta",
	"Cronometrar coleta"
]