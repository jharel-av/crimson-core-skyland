# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - LIB - NOTIFY NEAR MARKER
# ===================================

# Copiar el 'sky_id' del marker más cercano al score temporal 'acp_temp' del jugador.
scoreboard players operation @s acp_temp = @e[type=marker,tag=punto_guardado,limit=1,sort=nearest,distance=..3] sky_id

# Si el último checkpoint notificado ('acp_last') es diferente al actual ('acp_temp')...
# ...entonces es un nuevo checkpoint que no ha sido notificado.
execute unless score @s acp_last = @s acp_temp run tellraw @s [{"text":"[SkyLand]","color":"gold"},{"text":" ✓ Checkpoint guardado.","color":"green"}]
execute unless score @s acp_last = @s acp_temp run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1.5
execute unless score @s acp_last = @s acp_temp run scoreboard players operation @s acp_last = @s acp_temp
