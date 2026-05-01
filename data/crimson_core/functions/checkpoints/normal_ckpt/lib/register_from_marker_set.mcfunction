# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - LIB - REGISTER FROM MARKER (SET)
# ===================================

# Copiar el ID del marker ('sky_id') al score 'acp_id' del jugador.
scoreboard players operation @s acp_id = @e[type=marker,tag=punto_guardado,limit=1,sort=nearest,distance=..3] sky_id

# Reiniciar el timer de expiración a 30 minutos (36000 ticks).
scoreboard players set @s acp_timer 36000
