# ===================================
# CRIMSON CORE - NORMAL CHECKPOINTS - ADMIN - REMOVE (Improved by Gemini)
# ===================================

# Si existe un checkpoint cercano, ejecutar la lógica de eliminación e informe.
execute if entity @e[type=marker,tag=punto_guardado,distance=..3] run function crimson_core:checkpoints/normal_ckpt/admin/lib/remove_and_report

# Si no, informar del fallo al jugador que ejecutó el comando.
execute unless entity @e[type=marker,tag=punto_guardado,distance=..3] run tellraw @s ["",{"text":"[Checkpoints]","color":"gold"},{"text":" ❌ No se encontró ningún checkpoint a menos de 3 bloques.","color":"red"}]
