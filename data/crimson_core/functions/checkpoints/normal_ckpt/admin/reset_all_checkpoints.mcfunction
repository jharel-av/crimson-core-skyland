# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - ADMIN - RESET ALL SCOREBOARDS
# Author: Gemini
# WARNING: This is a destructive action. It will wipe all checkpoint data for all players and markers.
# ===================================

# --- REMOVE PLAYER-SPECIFIC CHECKPOINT DATA ---
scoreboard objectives remove acp_height
scoreboard objectives remove acp_id
scoreboard objectives remove acp_x
scoreboard objectives remove acp_y
scoreboard objectives remove acp_z
scoreboard objectives remove acp_timer
scoreboard objectives remove acp_last
scoreboard objectives remove acp_temp

# --- REMOVE MARKER & GLOBAL CHECKPOINT DATA ---
scoreboard objectives remove sky_id
scoreboard objectives remove skyland_data

# --- CONFIRMATION MESSAGE ---
tellraw @s {"text":"[Checkpoints] ¡ADVERTENCIA! Todos los scoreboards del sistema de checkpoints han sido eliminados.","color":"red"}
tellraw @s {"text":"Para que el sistema vuelva a funcionar, necesitas recargar el datapack con /reload.","color":"yellow"}
