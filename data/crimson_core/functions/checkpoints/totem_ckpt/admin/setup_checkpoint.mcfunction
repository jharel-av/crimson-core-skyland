# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - ADMIN - SETUP
# Se ejecuta desde un marker con el tag 'iniciando_cp_totem'
# ===================================

# 1. Incrementar el contador global de IDs totémicos.
scoreboard players add #GLOBAL_ID skyland_data_totem 1

# 2. Copiar el nuevo ID global al score 'sky_id_totem' de este marker.
scoreboard players operation @s sky_id_totem = #GLOBAL_ID skyland_data_totem

# 3. Añadir el tag que lo identifica como un checkpoint totémico funcional.
tag @s add punto_guardado_totem

# 4. Feedback visual y sonoro para el admin.
playsound minecraft:item.totem.use master @a[distance=..10] ~ ~ ~ 0.8 1.2
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0 10

# 5. Notificar al admin que el checkpoint fue creado y qué ID tiene.
tellraw @a[tag=admin] ["",{"text":"[Checkpoints Totémicos]","color":"red"},{"text":" ✅ ID: ","color":"green"},{"score":{"name":"#GLOBAL_ID","objective":"skyland_data_totem"},"color":"yellow"},{"text":" creado en tu posición.","color":"gray"}]

# 6. Eliminar el tag de inicialización para evitar que se ejecute en un bucle.
tag @s remove iniciando_cp_totem
