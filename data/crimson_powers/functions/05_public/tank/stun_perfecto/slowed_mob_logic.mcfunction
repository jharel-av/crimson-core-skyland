# Lógica para cada entidad que está actualmente ralentizada por el stun.
# Es llamada por mobs_tick.mcfunction.

# 1. Reducir contador de ralentización.
scoreboard players remove @s slowness_duration 1

# 2. Comprobar si ha terminado la ralentización.
execute if score @s slowness_duration matches ..0 run function crimson_powers:05_public/tank/stun_perfecto/end_slowness
