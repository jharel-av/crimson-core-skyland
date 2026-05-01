# 1. Sumamos 1 tick al contador de todos los PapuCuys activos
execute as @a[tag=PapuCuy,tag=!np] run scoreboard players add @s playmakers_timer 1

# 2. Si el contador llega a 12, ejecutamos la pasiva y reseteamos a 0
execute as @a[tag=PapuCuy,tag=!np,scores={playmakers_timer=15..}] at @s run function crimson_powers:03_pasivas/01_playmakers/01_yuhni/pasiva
