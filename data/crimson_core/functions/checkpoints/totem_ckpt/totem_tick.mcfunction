# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - TICK
# ===================================

# --- Detección de Caída (Checkpoints Totémicos) ---
# Se activa a -41, PERO solo para jugadores con los tags requeridos (np, PortaTotem).
execute as @a[tag=np,tag=PortaTotem] run function crimson_core:checkpoints/totem_ckpt/detect_fall

# --- Creación de Checkpoints (Admin) ---
execute as @e[type=marker,tag=iniciando_cp_totem] at @s run function crimson_core:checkpoints/totem_ckpt/admin/setup_checkpoint

# --- Registro de Checkpoints (Jugadores) ---
# El registro también debe ser solo para jugadores que pueden usar este sistema.
execute as @e[type=marker,tag=punto_guardado_totem] at @s run execute as @a[distance=..3,tag=np,tag=PortaTotem] run function crimson_core:checkpoints/totem_ckpt/lib/register_from_marker

# --- Notificación de Checkpoints (Jugadores) ---
execute as @e[type=marker,tag=punto_guardado_totem] at @s run execute as @a[distance=..3,tag=np,tag=PortaTotem] run function crimson_core:checkpoints/totem_ckpt/lib/notify_near_marker

# --- Mantenimiento de Timers ---
execute as @a[scores={acpt_timer=1..}] run scoreboard players remove @s acpt_timer 1
execute as @a[scores={acpt_timer=0}] if score @s acpt_id matches 1.. run function crimson_core:checkpoints/totem_ckpt/lib/reset_timer
