if esmalte = 0 and dentina = 0{
sprite_index = s_placa_de_4_pocos_01
instance_destroy(other)
dentina = dentina + 1
}
else if esmalte = 0 and dentina = 1{
sprite_index = s_placa_de_4_pocos_02
instance_destroy(other)
dentina = dentina + 1
}
else if esmalte = 1 and dentina = 0{
sprite_index = s_placa_de_4_pocos_11
instance_destroy(other)
dentina = dentina + 1
}
else if esmalte = 1 and dentina = 1{
sprite_index = s_placa_de_4_pocos_11
instance_destroy(other)
dentina = dentina + 1
}
else if esmalte = 2 and dentina = 0{
sprite_index = s_placa_de_4_pocos_21
instance_destroy(other)
dentina = dentina + 1
}
else if esmalte = 2 and dentina = 1{
sprite_index = s_placa_de_4_pocos_22
instance_destroy(other)
dentina = dentina + 1
}

