# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - LOAD
# Namespace: crimson_core:checkpoints/normal_ckpt
# ===================================

# Mensaje de carga
tellraw @a[tag=admin] [{"text":"[Skyland Engine]","color":"gold"},{"text":" Módulo de Checkpoints Normales (normal_ckpt) cargado.","color":"aqua"}]

# ===== SCOREBOARDS =====
# Referencia de nombres:
# acp -> Anti-Caidas/CheckPoint
#
# acp_height: (Jugador) Altura actual del jugador.
# acp_id: (Jugador) ID del último checkpoint visitado.
# acp_timer: (Jugador) Tiempo restante del checkpoint.
# acp_last: (Jugador) ID del checkpoint anterior para evitar spam de notificaciones.
# acp_temp: (Jugador) Scoreboard temporal para operaciones.
#
# sky_id: (Marker) ID único del checkpoint.
# skyland_data: (Global) Contador global para asignar nuevos IDs a los checkpoints.

scoreboard objectives add acp_height dummy
scoreboard objectives add acp_id dummy
scoreboard objectives add acp_timer dummy
scoreboard objectives add acp_last dummy
scoreboard objectives add acp_temp dummy

scoreboard objectives add sky_id dummy
scoreboard objectives add skyland_data dummy

# Inicializar el contador global de IDs de checkpoints si no existe, para asegurar que el primer ID sea 1.
execute unless score #GLOBAL_ID skyland_data matches 0.. run scoreboard players set #GLOBAL_ID skyland_data 0
