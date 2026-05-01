# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - TELEPORT TO CHECKPOINT
# Rescata al jugador y simula el uso de un tótem.
# Usa una tag temporal para seguridad en multiplayer.
# ===================================

# --- Lógica de Teletransporte ---
# Ejecutar como cada marcador de totem...
# Si el 'sky_id_totem' del marcador es igual al 'acpt_id' del jugador con la tag de rescate...
# ...teletransportar a ese jugador al marcador.
execute as @e[type=marker,tag=punto_guardado_totem] if score @s sky_id_totem = @a[tag=totem_is_rescuing,limit=1] acpt_id run tp @a[tag=totem_is_rescuing,limit=1] @s

# Notificar al jugador rescatado.
tellraw @a[tag=totem_is_rescuing] [{"text":"[Checkpoints Totémicos]","color":"red"},{"text":" ¡Tu tótem te ha salvado! Regresando al último punto de control...","color":"yellow"}]

# Resetear el checkpoint totémico para que sea de un solo uso.
function crimson_core:checkpoints/totem_ckpt/lib/reset_timer

# --- Limpieza ---
# Quitar la tag temporal del jugador.
tag @a[tag=totem_is_rescuing] remove totem_is_rescuing
