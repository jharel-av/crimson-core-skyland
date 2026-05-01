# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - ADMIN - FIX CHECKPOINTS
# Author: Gemini
# Description: Finds and repairs any checkpoint markers that are missing a valid sky_id.
# ===================================

# --- Inicialización ---
# Contador para los checkpoints reparados.
scoreboard players set #FIXED_COUNT skyland_data 0

# --- Detección y Reparación ---
# Ejecutar como cada 'punto_guardado' que NO tenga un 'sky_id' (o que sea 0, que es inválido).
# La condición 'if score @s sky_id matches 1..' selecciona solo los que SÍ tienen ID,
# por lo que 'unless' selecciona a los que NO la tienen.
execute as @e[type=marker,tag=punto_guardado] unless score @s sky_id matches 1.. run function fun_skyland:checkpoints/normal_ckpt/admin/lib/fix_single_checkpoint

# --- Reporte ---
# Notificar al admin cuántos checkpoints fueron reparados.
tellraw @a[tag=admin] ["",{"text":"[Checkpoints Fix]","color":"dark_aqua"},{"text":" Proceso de reparación completado. Checkpoints reparados: ","color":"gray"},{"score":{"name":"#FIXED_COUNT","objective":"skyland_data"},"color":"yellow"}]

# Resetear el contador por si se vuelve a usar.
scoreboard players reset #FIXED_COUNT skyland_data
