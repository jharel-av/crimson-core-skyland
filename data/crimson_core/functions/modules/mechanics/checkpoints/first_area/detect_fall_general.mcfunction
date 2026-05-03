# ===================================
# SKYLAND ENGINE - GENERAL ANTI-FALL - DETECT
# Se activa a -50
# ===================================

# Almacenar la coordenada Y actual del jugador en el scoreboard 'ac_gen_height'.
execute store result score @s ac_gen_height run data get entity @s Pos[1] 100

# Si la altura está entre -56 y -63, ejecutar la función de rescate general.
execute if score @s ac_gen_height matches -6300..-5600 run function crimson_core:modules/mechanics/checkpoints/first_area/rescue_general
