# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - LIB - REGISTER FROM MARKER (SET)
# ===================================

# Copiar el ID del marker ('sky_id_totem') al score 'acpt_id' del jugador.
scoreboard players operation @s acpt_id = @e[type=marker,tag=punto_guardado_totem,limit=1,sort=nearest,distance=..3] sky_id_totem

# Reiniciar el timer de expiración a 15 minutos (18000 ticks).
scoreboard players set @s acpt_timer 18000
