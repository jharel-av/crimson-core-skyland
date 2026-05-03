# ===================================
# CRIMSON CORE - TOTEMIC CHECKPOINTS - DETECT FALL
# Se activa a -41 para jugadores con tags de tótem.
# ===================================

# Almacenar la coordenada Y actual del jugador en el scoreboard 'acpt_height'.
execute store result score @s acpt_height run data get entity @s Pos[1] 100

# Si la altura es -41 o inferior, ejecutar la función de rescate.
execute if score @s acpt_height matches ..-4100 run function crimson_core:checkpoints/totem_ckpt/rescue_player
