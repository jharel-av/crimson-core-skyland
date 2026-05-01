# ===================================
# SKYLAND ENGINE - CHECKPOINTS - TELEPORT TO CHECKPOINT (MULTIPLAYER-SAFE)
# Rescata al jugador usando el ID del marcador guardado y una tag temporal.
# ===================================

# --- Lógica de Teletransporte ---
# Ejecutar como cada marcador...
# Si el 'sky_id' del marcador es igual al 'acp_id' del jugador con la tag de rescate...
# ...teletransportar a ese jugador al marcador.
execute as @e[type=marker,tag=punto_guardado] if score @s sky_id = @a[tag=normal_is_rescuing,limit=1] acp_id run tp @a[tag=normal_is_rescuing,limit=1] @s

# --- Efectos y notificación (dirigidos al jugador rescatado) ---

# Cancelar el momentum de la caída dándole resistencia por un instante.
effect give @a[tag=normal_is_rescuing] resistance 2 4 true

# Notificar al jugador sobre el rescate.
tellraw @a[tag=normal_is_rescuing] [{"text":"[Skyland]","color":"gold"},{"text":" ¡Rescatado! Regresando al último checkpoint...","color":"aqua"}]

# Efectos de sonido y partículas para el teletransporte.
execute at @a[tag=normal_is_rescuing] run playsound minecraft:entity.enderman.teleport player @a[tag=normal_is_rescuing]
execute at @a[tag=normal_is_rescuing] run particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 50

# --- Limpieza ---
# Quitar la tag temporal del jugador.
tag @a[tag=normal_is_rescuing] remove normal_is_rescuing
