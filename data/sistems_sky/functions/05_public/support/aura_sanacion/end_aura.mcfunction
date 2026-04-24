# END_AURA: Se ejecuta cuando termina la duración del aura.

# Quitar el tag de control
tag @s remove aura_activa

# Feedback para el jugador
title @s actionbar {"text":"El aura ha terminado.","color":"yellow"}
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.5 1.5