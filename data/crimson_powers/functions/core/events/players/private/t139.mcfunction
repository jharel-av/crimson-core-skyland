# Router privado de eventos para Papuprime (t139)

# Detectar el uso del "Core de Papuprime"
execute if entity @s[nbt={SelectedItem:{tag:{d_papu:1b}}},distance=0..] run function crimson_powers:players/01_papuprime/router/core
