# ===================================
# SKYLAND ENGINE - GENERAL ANTI-FALL - TICK
# ===================================

# Ejecuta la detección de caídas general para cada jugador que NO tenga el tag 'np'.
execute as @a[tag=!np] run function crimson_core:checkpoints/anticaidas/detect_fall_general
