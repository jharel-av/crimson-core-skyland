# ======== TIMERS DEL JUGADOR (STUN PERFECTO) ========

# 1. Reduce el cooldown principal de la habilidad cada tick.
execute as @a[scores={stun_perfecto_cd=1..}] run scoreboard players remove @s stun_perfecto_cd 1

# 2. Reduce el contador previo al stun para el jugador que ha activado la habilidad.
execute as @a[tag=stun_en_curso,scores={stun_timer=1..}] run scoreboard players remove @s stun_timer 1

# 3. Cuando el contador llega a 0, ejecuta el efecto del stun en la posición del jugador.
execute as @a[tag=stun_en_curso,scores={stun_timer=..0}] at @s run function crimson_powers:05_public/tank/stun_perfecto/stun_effect
