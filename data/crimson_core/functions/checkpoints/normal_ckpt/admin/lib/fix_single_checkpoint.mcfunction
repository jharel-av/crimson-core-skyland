# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - ADMIN - LIB - FIX SINGLE CHECKPOINT
# Author: Gemini
# Description: Assigns a new valid ID to a single checkpoint marker.
# ===================================

# 1. Incrementar el contador global de IDs.
scoreboard players add #GLOBAL_ID skyland_data 1

# 2. Copiar el nuevo ID global al score 'sky_id' de este marker.
scoreboard players operation @s sky_id = #GLOBAL_ID skyland_data

# 3. Incrementar el contador de checkpoints reparados para el reporte final.
scoreboard players add #FIXED_COUNT skyland_data 1

# 4. Efecto visual para que el admin vea qué checkpoint se ha reparado.
particle minecraft:instant_effect ~ ~1 ~ 0.2 0.5 0.2 0.1 20
playsound minecraft:entity.experience_orb.pickup player @a[distance=..32] ~ ~ ~ 1 0.8
