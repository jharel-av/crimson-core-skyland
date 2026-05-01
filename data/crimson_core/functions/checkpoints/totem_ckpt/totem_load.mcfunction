# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - LOAD
# ===================================

# Mensaje de carga
tellraw @a[tag=admin] [{"text":"[Skyland Engine]","color":"gold"},{"text":" Módulo de Checkpoints Totémicos (totem_ckpt) cargado.","color":"aqua"}]

# ===== SCOREBOARDS =====
# Prefijo: acpt -> Anti-Caidas Point Totem
scoreboard objectives add acpt_height dummy
scoreboard objectives add acpt_id dummy
scoreboard objectives add acpt_timer dummy
scoreboard objectives add acpt_last dummy
scoreboard objectives add acpt_temp dummy

# ID para los markers totémicos. Usamos un objetivo diferente para no mezclarlos con los normales.
scoreboard objectives add sky_id_totem dummy
# Contador global para los IDs de los checkpoints totémicos.
scoreboard objectives add skyland_data_totem dummy

# Inicializar el contador global si no existe.
execute unless score #GLOBAL_ID skyland_data_totem matches 0.. run scoreboard players set #GLOBAL_ID skyland_data_totem 0
