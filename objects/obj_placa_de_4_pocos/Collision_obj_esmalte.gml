if esmalte = 0 and dentina = 0{
sprite_index = s_placa_de_4_pocos_10
instance_destroy(other)
esmalte = esmalte + 1
}
else if esmalte = 1 and dentina = 0{
sprite_index = s_placa_de_4_pocos_20
instance_destroy(other)
esmalte = esmalte + 1
}
else if esmalte = 0 and dentina = 1{
sprite_index = s_placa_de_4_pocos_11
instance_destroy(other)
esmalte = esmalte + 1
}
else if esmalte = 1 and dentina = 1{
sprite_index = s_placa_de_4_pocos_21
instance_destroy(other)
esmalte = esmalte + 1
}
else if esmalte = 1 and dentina = 2{
sprite_index = s_placa_de_4_pocos_22
instance_destroy(other)
esmalte = esmalte + 1
}
