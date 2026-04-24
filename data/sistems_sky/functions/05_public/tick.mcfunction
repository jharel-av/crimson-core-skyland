# Ticks y Loops Esenciales para el funcionamiento de las habilidades.
# Aquí se ejecutan las funciones que necesitan ser comprobadas cada tick para su correcto funcionamiento.
# --- GESTOR UNIVERSAL DE COOLDOWNS Y DURACIONES ---
# Resta o suma 1 tick a cualquier jugador que tenga un cooldown o duración mayor a 0
execute as @a[scores={cd_vampiro=1..}] run scoreboard players remove @s cd_vampiro 1
execute as @a[scores={buff_cd=1..}] run scoreboard players remove @s buff_cd 1
execute as @a[scores={mov_dash_cd=1..}] run scoreboard players remove @s mov_dash_cd 1
execute as @a[scores={mov_leap_cd=1..}] run scoreboard players remove @s mov_leap_cd 1
execute as @a[scores={cd_aura=1..}] run scoreboard players remove @s cd_aura 1
execute as @a[scores={cd_ultimate=1..}] run scoreboard players remove @s cd_ultimate 1
execute as @a[scores={aura_duration=1..}] run scoreboard players remove @s aura_duration 1
execute as @a[scores={ultimate_duration=1..}] run scoreboard players remove @s ultimate_duration 1
scoreboard players add @a[tag=aura_tank] tap_g 1
scoreboard players add @a[tag=aura_tank] tap_cd 1

# -- Duración de habilidades:
# --- Aura de Sanación ---
# Envía un pulso de curación centrado en el jugador con el aura activa.
execute as @a[scores={aura_duration=80}] at @s run function sistems_sky:05_public/support/aura_sanacion/on_aura_pulse
execute as @a[scores={aura_duration=60}] at @s run function sistems_sky:05_public/support/aura_sanacion/on_aura_pulse
execute as @a[scores={aura_duration=40}] at @s run function sistems_sky:05_public/support/aura_sanacion/on_aura_pulse
execute as @a[scores={aura_duration=20}] at @s run function sistems_sky:05_public/support/aura_sanacion/on_aura_pulse
# Finaliza el aura cuando el contador llega a 1.
execute as @a[scores={aura_duration=1}] run function sistems_sky:05_public/support/aura_sanacion/end_aura
# --- Buffs Perfectos (Ultimate) ---
# Finaliza la ultimate cuando el contador llega a 1.
execute as @a[scores={ultimate_duration=1}] run function sistems_sky:05_public/support/buffs_perfectos/remove_buffs

# --- Stun Perfecto (Timers de jugador y detección)
function sistems_sky:05_public/tank/stun_perfecto/tick
# --- Stun Perfecto (Timers de entidades afectadas)
function sistems_sky:05_public/tank/stun_perfecto/mobs_tick
