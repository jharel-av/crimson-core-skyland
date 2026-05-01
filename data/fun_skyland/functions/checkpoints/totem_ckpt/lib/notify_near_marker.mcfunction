# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - LIB - NOTIFY NEAR MARKER
# ===================================

# Copiar el 'sky_id_totem' del marker más cercano al score temporal 'acpt_temp' del jugador.
scoreboard players operation @s acpt_temp = @e[type=marker,tag=punto_guardado_totem,limit=1,sort=nearest,distance=..3] sky_id_totem

# Si el último checkpoint notificado ('acpt_last') es diferente al actual ('acpt_temp')...
execute unless score @s acpt_last = @s acpt_temp run tellraw @s [{"text":"[Checkpoints Totémicos]","color":"red"},{"text":" ✓ Checkpoint Totémico guardado.","color":"yellow"}]
execute unless score @s acpt_last = @s acpt_temp run playsound minecraft:item.totem.use player @s ~ ~ ~ 0.8 1.5
execute unless score @s acpt_last = @s acpt_temp run scoreboard players operation @s acpt_last = @s acpt_temp
