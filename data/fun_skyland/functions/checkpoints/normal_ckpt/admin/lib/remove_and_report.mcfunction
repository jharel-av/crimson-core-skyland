# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - ADMIN - LIB - REMOVE AND REPORT
# Author: Gemini
# Description: Removes the nearest checkpoint and reports its ID. Assumes it's run by a player.
# ===================================

# Guardar el ID del marker más cercano en el score temporal 'acp_temp' del jugador.
execute store result score @s acp_temp run scoreboard players get @e[type=marker,tag=punto_guardado,distance=..3,limit=1,sort=nearest] sky_id

# Eliminar el marker.
kill @e[type=marker,tag=punto_guardado,distance=..2,limit=1,sort=nearest]

# Notificar al jugador usando el ID que acabamos de guardar.
tellraw @s ["",{"text":"[Checkpoints]","color":"gold"},{"text":" ✔ Checkpoint con ID ","color":"gray"},{"score":{"name":"@s","objective":"acp_temp"},"color":"yellow"},{"text":" ha sido eliminado.","color":"gray"}]
