# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - LIB - RESET TIMER
# ===================================

# Limpiar los scores del checkpoint del jugador.
scoreboard players reset @s acp_id
scoreboard players reset @s acp_timer
scoreboard players reset @s acp_x
scoreboard players reset @s acp_y
scoreboard players reset @s acp_z

# Notificar al jugador que su punto de guardado ha expirado.
tellraw @s [{"text":"[Checkpoints]","color":"gold"},{"text":" ⏰ Tu checkpoint ha expirado.","color":"yellow"}]

# [IMPORTANTE] Limpiar también el último checkpoint notificado ('acp_last').
# Esto asegura que la notificación de 'checkpoint guardado' vuelva a aparecer
# la próxima vez que pase por CUALQUIER checkpoint.
scoreboard players reset @s acp_last

# Efecto de sonido.
playsound minecraft:block.note_block.basedrum player @s
