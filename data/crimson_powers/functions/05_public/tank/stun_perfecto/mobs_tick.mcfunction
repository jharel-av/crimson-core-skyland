# warn-off-file target-selector-no-dimension
# warn-off-file target-selector-no-type
# ======== TIMERS DE ENTIDADES (STUN PERFECTO) ========
# Esta función debe ser llamada en el tick.json principal.

# --- 1. Lógica para entidades aturdidas (inmovilizadas) ---
execute as @e[tag=stun_afectado] at @s run function crimson_powers:05_public/tank/stun_perfecto/stunned_mob_logic

# --- 2. Lógica para entidades ralentizadas ---
execute as @e[tag=slowed_by_stun] at @s run function crimson_powers:05_public/tank/stun_perfecto/slowed_mob_logic

# --- 3. Lógica global para reducción de vida máxima ---
# Disminuye el contador para todos los que tengan el score > 0
execute as @e[scores={health_reduction_duration=1..}] run scoreboard players remove @s health_reduction_duration 1

# Verifica si terminó el efecto de reducción de vida
execute as @e[scores={health_reduction_duration=..0},tag=stun_health_reduced] at @s run function crimson_powers:05_public/tank/stun_perfecto/end_health_reduction
