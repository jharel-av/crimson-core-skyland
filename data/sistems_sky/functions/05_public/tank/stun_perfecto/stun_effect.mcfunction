# --- Ejecuta el efecto del Stun Perfecto ---
# Se activa al finalizar el contador de "stun_timer" del jugador.

# 1. Limpia el tag del jugador.
tag @s remove stun_en_curso

# 2. Partículas y sonido para el efecto.
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 20
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 1 0.5

# 3. Identifica a los enemigos en un radio de 8 bloques.
# Incluye a cualquier entidad que no sea jugador y a jugadores con el tag "ene".
# Excluye a los que ya están afectados por el stun, ralentización o reducción de vida para evitar apilamiento.
execute as @e[type=!player,distance=..8,tag=!stun_afectado,tag=!slowed_by_stun,tag=!stun_health_reduced] at @s run function sistems_sky:05_public/tank/stun_perfecto/apply_effects_to_target
execute as @a[tag=ene,tag=!tanque,distance=..8,tag=!stun_afectado,tag=!slowed_by_stun,tag=!stun_health_reduced] at @s run function sistems_sky:05_public/tank/stun_perfecto/apply_effects_to_target