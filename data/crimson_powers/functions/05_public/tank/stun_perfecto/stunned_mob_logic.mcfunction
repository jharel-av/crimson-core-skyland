# Lógica para cada entidad que está actualmente aturdida.
# Es llamada por mobs_tick.mcfunction.

# 1. Reducir contador de duración del stun.
scoreboard players remove @s stun_duration 1

# 2. Comprobar si ha terminado la inmovilización.
execute if score @s stun_duration matches ..0 run function crimson_powers:05_public/tank/stun_perfecto/end_stun_start_slow
