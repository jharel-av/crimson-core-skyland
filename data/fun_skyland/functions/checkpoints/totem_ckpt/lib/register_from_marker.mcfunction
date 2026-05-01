# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - LIB - REGISTER FROM MARKER
# ===================================

# Copiar el 'sky_id_totem' del marker más cercano al score temporal 'acpt_temp' del jugador.
scoreboard players operation @s acpt_temp = @e[type=marker,tag=punto_guardado_totem,limit=1,sort=nearest,distance=..3] sky_id_totem

# Si el jugador ya tiene este checkpoint, simplemente reinicia su timer de expiración.
execute if score @s acpt_id = @s acpt_temp run scoreboard players set @s acpt_timer 18000

# Si es un checkpoint nuevo (o no tenía ninguno), llama a la función para guardar los datos.
execute unless score @s acpt_id = @s acpt_temp run function fun_skyland:checkpoints/totem_ckpt/lib/register_from_marker_set
