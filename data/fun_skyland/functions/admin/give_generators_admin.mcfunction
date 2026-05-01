# Entrega al jugador (@s) los huevos generadores para zonas NP Estáticas Ilimitadas.

# Huevo 210x210
give @s magma_cube_spawn_egg{display:{Name:'[{"text":"Generador: Zona NP 210x210","color":"aqua","italic":false}]',Lore:['[{"text":"Coloca una zona NP estática","color":"gray"},{"text":" de 210x210 con altura ilimitada."}]']}, EntityTag:{id:"minecraft:marker", Tags:["sl.zone.np", "sl.zone.type.unlimited", "sl.zone.size.210x210"]}} 1

# Huevo 100x100
give @s piglin_brute_spawn_egg{display:{Name:'[{"text":"Generador: Zona NP 100x100","color":"aqua","italic":false}]',Lore:['[{"text":"Coloca una zona NP estática","color":"gray"},{"text":" de 100x100 con altura ilimitada."}]']}, EntityTag:{id:"minecraft:marker", Tags:["sl.zone.np", "sl.zone.type.unlimited", "sl.zone.size.100x100"]}} 1

# Huevo 50x50
give @s piglin_spawn_egg{display:{Name:'[{"text":"Generador: Zona NP 50x50","color":"aqua","italic":false}]',Lore:['[{"text":"Coloca una zona NP estática","color":"gray"},{"text":" de 50x50 con altura ilimitada."}]']}, EntityTag:{id:"minecraft:marker", Tags:["sl.zone.np", "sl.zone.type.unlimited", "sl.zone.size.50x50"]}} 1

# Huevo 10x10
give @s pillager_spawn_egg{display:{Name:'[{"text":"Generador: Zona NP 10x10","color":"aqua","italic":false}]',Lore:['[{"text":"Coloca una zona NP estática","color":"gray"},{"text":" de 10x10 con altura ilimitada."}]']}, EntityTag:{id:"minecraft:marker", Tags:["sl.zone.np", "sl.zone.type.unlimited", "sl.zone.size.10x10"]}} 1

# Checkpoints
give @s slime_spawn_egg{display:{Name:'{"text":"[✔] Checkpoint COMÚN","color":"green","italic":false}'},EntityTag:{id:"minecraft:marker",Tags:["iniciando_checkpoint"]}} 1

give @s magma_cube_spawn_egg{display:{Name:'{"text":"[☠] Checkpoint TOTÉMICO","color":"red","italic":false}'},EntityTag:{id:"minecraft:marker",Tags:["iniciando_cp_totem"]}} 1

tellraw @s[tag=admin] [{"text":"[Skyland Engine]","color":"gold"},{"text":" Has recibido los huevos generadores de Zonas NP Ilimitadas y de los Checkpoints.","color":"yellow"}]
