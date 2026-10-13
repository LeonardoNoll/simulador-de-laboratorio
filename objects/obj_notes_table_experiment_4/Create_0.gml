row_label_width = 150
cell_width = 100
header_row_height = 45
cell_height = 30

header_labels = ["Controle Iodo", "Controle Amido", "Tubo 0", "Tubo 1", "Tubo 2", "Tubo 3", "Tubo 4", "Tubo 5", "Tubo 6", "Tubo 7"]
time_labels = ["-", "-", "0 min", "2 min", "4 min", "6 min", "8 min", "10 min", "12 min", "14 min"]
row_labels = ["Cor", "Interpretação"]

var _col_number = array_length(header_labels)

// Cabeçalho, linha 1: identidade da coluna (controle ou tubo)
for (var i = 0; i < _col_number; i++) {
	instance_create_depth(
		x + row_label_width + i * cell_width,
		y,
		depth - 1,
		obj_col_header,
		{text: header_labels[i], width: cell_width, height: header_row_height}
	)
}

// Cabeçalho, linha 2: tempo de reação decorrido no momento da coleta
for (var i = 0; i < _col_number; i++) {
	instance_create_depth(
		x + row_label_width + i * cell_width,
		y + header_row_height,
		depth - 1,
		obj_col_header,
		{text: time_labels[i], width: cell_width, height: header_row_height}
	)
}

// Corpo: uma linha por row_labels (Cor, Interpretação), uma célula editável por coluna
for (var _row = 0; _row < array_length(row_labels); _row++) {
	var _row_y = y + header_row_height * 2 + _row * cell_height

	instance_create_depth(
		x,
		_row_y,
		depth - 1,
		obj_base_cell_style,
		{text: row_labels[_row], width: row_label_width, height: cell_height}
	)

	for (var _col = 0; _col < _col_number; _col++) {
		instance_create_depth(
			x + row_label_width + _col * cell_width,
			_row_y,
			depth - 1,
			obj_writable_cell_experiment_4,
			{text: "", width: cell_width, height: cell_height, parent: id}
		)
	}
}

// Botão de finalizar, logo abaixo da tabela
var _table_bottom = y + header_row_height * 2 + cell_height * array_length(row_labels)

submit_btn = instance_create_depth(
	x + row_label_width,
	_table_bottom + 15,
	depth - 1,
	obj_btn_submit_experiment_4,
	{parent: id}
)

x_btn = instance_create_depth(
	x + row_label_width + cell_width * _col_number,
	y - header_row_height,
	depth - 10,
	obj_btn_x
)
x_btn.parent = id
