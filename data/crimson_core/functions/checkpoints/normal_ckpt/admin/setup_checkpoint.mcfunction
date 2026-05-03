# ===================================
# CRIMSON CORE - NORMAL CHECKPOINTS - ADMIN - SETUP
# ===================================

# 1. Incrementar el contador global de IDs.
scoreboard players add #GLOBAL_ID skyland_data 1

# 2. Copiar el nuevo ID global al score 'sky_id' de este marker.
scoreboard players operation @s sky_id = #GLOBAL_ID skyland_data

# 3. Añadir el tag que lo identifica como un checkpoint funcional.
tag @s add punto_guardado

# 4. Feedback visual y sonoro para el admin.
playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 1 2
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10

# 5. Notificar al admin que el checkpoint fue creado y qué ID tiene.
tellraw @a[tag=admin] ["",{"text":"[Checkpoints]","color":"gold"},{"text":" ✅ ID: ","color":"green"},{"score":{"name":"#GLOBAL_ID","objective":"skyland_data"},"color":"yellow"},{"text":" creado en tu posición.","color":"gray"}]

# 6. Eliminar el tag de inicialización para evitar que se ejecute en un bucle.
tag @s remove iniciando_checkpoint
