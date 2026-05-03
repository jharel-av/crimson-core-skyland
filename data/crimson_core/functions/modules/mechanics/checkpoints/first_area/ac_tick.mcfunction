# ===================================
# CRIMSON CORE - GENERAL ANTI-FALL - TICK
# ===================================

# Ejecuta la detección de caídas general para cada jugador que NO tenga el tag 'np'.
execute as @a[tag=!np] run function crimson_core:modules/mechanics/checkpoints/first_area/detect_fall_general
