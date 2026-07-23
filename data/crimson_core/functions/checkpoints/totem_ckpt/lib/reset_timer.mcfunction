# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - LIB - RESET TIMER
# ===================================

# Limpiar los scores del checkpoint totémico del jugador.
scoreboard players reset @s acpt_id
scoreboard players reset @s acpt_timer

# Notificar al jugador que su punto de guardado ha expirado.
tellraw @s [{"text":"[Checkpoints Totémicos]","color":"red"},{"text":" ⏰ Tu checkpoint totémico ha expirado.","color":"yellow"}]

# Limpiar también el último checkpoint notificado.
scoreboard players reset @s acpt_last
