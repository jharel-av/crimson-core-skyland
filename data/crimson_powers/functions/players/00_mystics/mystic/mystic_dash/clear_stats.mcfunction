# ----------------------------------------------
# Archivo: clear_stats.mcfunction
# Descripción: Archivo para limpiar los efectos de la habilidad Mystic Dash, este archivo se llama cada vez que se desactiva la habilidad o se cambia el nivel de la habilidad, esto para evitar que se acumulen los efectos de la habilidad y se mantenga el equilibrio del juego.
# ----------------------------------------------
attribute @s minecraft:generic.movement_speed modifier remove 11111111-1111-1111-1112-111111111111
attribute @s minecraft:generic.attack_damage modifier remove 11111111-1111-1111-1111-111111111112
effect clear @s jump_boost

