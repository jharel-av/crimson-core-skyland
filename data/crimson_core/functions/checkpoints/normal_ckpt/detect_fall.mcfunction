# ===================================
# CRIMSON CORE - NORMAL CHECKPOINTS - DETECT FALL
# Se activa a -41
# ===================================

# Almacenar la coordenada Y actual del jugador en el scoreboard 'acp_height'.
execute store result score @s acp_height run data get entity @s Pos[1] 100

# Si la altura está entre -41 y -55, ejecutar la función de rescate.
execute if score @s acp_height matches -5500..-4100 run function crimson_core:checkpoints/normal_ckpt/rescue_player
