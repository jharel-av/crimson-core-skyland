# Router privado de eventos para Jharel

# Detectar el uso del "Ojo de Jharel"
execute if entity @s[nbt={SelectedItem:{tag:{d_jharel:1b}}},distance=0..] run function crimson_powers:players/07_jharel/router/core
