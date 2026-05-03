# ===================================
# CRIMSON CORE - NORMAL CHECKPOINTS - TICK
# ===================================

# --- Rescate Anticaídas (Checkpoints) ---
# Se activa a -41
execute as @a unless entity @s[tag=np] run function crimson_core:checkpoints/normal_ckpt/detect_fall

# --- Creación de Checkpoints (Admin) ---
execute as @e[type=marker,tag=iniciando_checkpoint] at @s run function crimson_core:checkpoints/normal_ckpt/admin/setup_checkpoint

# --- Registro de Checkpoints (Jugadores) ---
execute as @e[type=marker,tag=punto_guardado] at @s run execute as @a[distance=..3] run function crimson_core:checkpoints/normal_ckpt/lib/register_from_marker

# --- Notificación de Checkpoints (Jugadores) ---
execute as @e[type=marker,tag=punto_guardado] at @s run execute as @a[distance=..3] run function crimson_core:checkpoints/normal_ckpt/lib/notify_near_marker

# --- Mantenimiento de Timers ---
execute as @a[scores={acp_timer=1..}] run scoreboard players remove @s acp_timer 1
execute as @a[scores={acp_timer=0}] if score @s acp_id matches 1.. run function crimson_core:checkpoints/normal_ckpt/lib/reset_timer
