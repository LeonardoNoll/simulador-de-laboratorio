global.selected = noone
global.particle_sys = noone

randomize()

// Ambos os arrays devem seguir a mesma ordem
// e, para fins de organização, os items devem ter
// o mesmo nome

// Todo item deve ter um "case" equivalente no
// evento Left Released do obj_context_btn

enum OPTIONS {
	CALCAR,
	VERIFICAR,
	DIAGNOSTICAR,
	EXTRAIR_CONTEUDO,
	HIPOSSALIVACAO,
	POUCA_SALIVACAO,
	SALIVACAO_NORMAL,
	IDENTIFICAR,
	PREPARAR_PARA_COLETA,
	CRONOMETRAR_COLETA,
	MAIS_1_MINUTO,
	MENOS_1_MINUTO,
	ACELERAR_CONTAGEM,
	FINALIZAR_TUTORIAL,
	REMOVER_PERA,
	IDENFICIAR_RECIPIENTE,
	ABRIR_TUBO_DE_ENSAIO,
	FECHER_TUBO_DE_ENSAIO,
	AGITAR
}

options_string = [
	"Calçar",
	"Verificar",
	"Diagnosticar",
	"Extrair conteúdo",
	"Hipossalivação",
	"Pouca salivação",
	"Salivação normal",
	"Identificar",
	"Prepara para coleta",
	"Cronometrar coleta",
	"1+ Minuto",
	"1- Minuto",
	"Acelerar contagem",
	"Finalizar tutorial",
	"Remover pera",
	"Idenficar recipiente",
	"Abrir tubo de ensaio",
	"Fechar tubo de ensaio",
	"Agitar"
]