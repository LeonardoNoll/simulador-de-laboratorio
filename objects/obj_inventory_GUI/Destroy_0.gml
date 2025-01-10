// Clean up
while(array_length(itens) > 0) {
	instance_destroy(itens[0])
	array_shift(itens)
}

