# ===================================
# Modulo de Checkpoints - ANTICAIDAS - LOAD
# ===================================

## Antocaídas General (AC):
# Mensaje de carga
tellraw @a[tag=admin] [{"text":"[Crimson Core]","color":"gold"},{"text":" Módulo de Anticaídas General (anticaidas) cargado.","color":"aqua"}]

## Anticaídas CheckPoints (ACP):
# ===== SCOREBOARDS =====
# Referencia de nombres:
# acp -> Anti-Caidas/CheckPoint
#
# acp_id: (Jugador) ID del último checkpoint visitado.
scoreboard objectives add acp_id dummy
# acp_timer: (Jugador) Tiempo restante del checkpoint.
scoreboard objectives add acp_timer dummy
# acp_last: (Jugador) ID del checkpoint anterior para evitar spam de notificaciones.
scoreboard objectives add acp_last dummy
# acp_temp: (Jugador) Scoreboard temporal para operaciones.
scoreboard objectives add acp_temp dummy
#
# sky_id: (Marker) ID único del checkpoint.
scoreboard objectives add sky_id dummy
# skyland_data: (Global) Contador global para asignar nuevos IDs a los checkpoints.
scoreboard objectives add skyland_data dummy
#
# Inicializar el contador global de IDs de checkpoints si no existe, para asegurar que el primer ID sea 1.
execute unless score #GLOBAL_ID skyland_data matches 0.. run scoreboard players set #GLOBAL_ID skyland_data 0
# Mensaje de carga
tellraw @a[tag=admin] [{"text":"[Crimson Core]","color":"gold"},{"text":" Módulo de Checkpoints Normales (normal_ckpt) cargado.","color":"aqua"}]

## TOTEMIC CHECKPOINTS (acpt)
# ===== SCOREBOARDS =====
# Prefijo: acpt -> Anti-Caidas Point Totem
#
# acpt_id: (Jugador) ID del último checkpoint visitado.
scoreboard objectives add acpt_id dummy
# acpt_timer: (Jugador) Tiempo restante del checkpoint.
scoreboard objectives add acpt_timer dummy
# acpt_last: (Jugador) ID del Checkpoint Anterior para evitar Spam de Notificaciones.
scoreboard objectives add acpt_last dummy
# acpt_temp: (Jugador) Scoreboard Temporal para operaciones.
scoreboard objectives add acpt_temp dummy
# ID para los markers totémicos. Usamos un objetivo diferente para no mezclarlos con los normales.
scoreboard objectives add sky_id_totem dummy
# Contador global para los IDs de los checkpoints totémicos.
scoreboard objectives add skyland_data_totem dummy
# Inicializar el contador global si no existe.
execute unless score #GLOBAL_ID skyland_data_totem matches 0.. run scoreboard players set #GLOBAL_ID skyland_data_totem 0
# Mensaje de carga
tellraw @a[tag=admin] [{"text":"[Crimson Core]","color":"gold"},{"text":" Módulo de Checkpoints Totémicos (totem_ckpt) cargado.","color":"aqua"}]
