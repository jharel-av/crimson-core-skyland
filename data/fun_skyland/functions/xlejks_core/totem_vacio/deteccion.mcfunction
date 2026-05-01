# ------ Sistema de Totems -----
# Creado por xLejks
# Optimizado por Gemini
# ===================================

# Detecta si el jugador tiene el totem en la mano principal O en la secundaria y le añade el tag.
execute as @a run tag @s remove PortaTotem
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",tag:{VoidTotem:1b}}]}] run tag @s add PortaTotem
execute as @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying",tag:{VoidTotem:1b}}}] run tag @s add PortaTotem

# Marca a los jugadores que caen al vacio con el totem para ser rescatados
execute as @a[tag=PortaTotem] at @s run tag @s[y=-58,dy=-600] add RescatarDelVacio

# Contar jugadores a rescatar y mostrar mensaje personalizado
scoreboard players set #count skyland.vt.count 0
execute as @a[tag=RescatarDelVacio] run scoreboard players add #count skyland.vt.count 1
execute if score #count skyland.vt.count matches 1 run tellraw @a ["",{"color":"blue","text":"El Totem del Vacio ha rescatado a "},{"selector":"@a[tag=RescatarDelVacio]","color":"aqua"},{"text":"!"}]
execute if score #count skyland.vt.count matches 2.. run tellraw @a ["",{"color":"blue","text":"El Totem del Vacio ha rescatado a "},{"selector":"@a[tag=RescatarDelVacio]","color":"aqua","bold":"true"},{"text":"!"}]

# Ejecuta la secuencia de rescate para cada jugador marcado
execute as @a[tag=RescatarDelVacio] at @s run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 10 1.5
execute as @a[tag=RescatarDelVacio] at @s run particle minecraft:soul ~ ~1 ~ 0.6 0.7 0.6 1 100 force
execute as @a[tag=RescatarDelVacio] run tp @s 90 192 -230
execute as @a[tag=RescatarDelVacio] run tag @s remove RescatarDelVacio