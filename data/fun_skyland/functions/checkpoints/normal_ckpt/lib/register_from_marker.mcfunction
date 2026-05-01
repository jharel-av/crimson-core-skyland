# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - LIB - REGISTER FROM MARKER
# ===================================

# Copiar el 'sky_id' del marker más cercano al score temporal 'acp_temp' del jugador.
scoreboard players operation @s acp_temp = @e[type=marker,tag=punto_guardado,limit=1,sort=nearest,distance=..3] sky_id

# Si el jugador ya tiene este checkpoint, simplemente reinicia su timer de expiración.
execute if score @s acp_id = @s acp_temp run scoreboard players set @s acp_timer 36000

# Si es un checkpoint nuevo (o no tenía ninguno), llama a la función para guardar los datos.
execute unless score @s acp_id = @s acp_temp run function fun_skyland:checkpoints/normal_ckpt/lib/register_from_marker_set
