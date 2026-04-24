# warn-off-file execute-group
# ON_AURA_PULSE: Ejecuta un pulso de curación en área.
# Se ejecuta centrado en el jugador Support (@s) que activó el aura.

# 1. Partículas del aura general (centradas en el Support)
particle minecraft:end_rod ~ ~1 ~ 1 0.5 1 0.05 30 force

# 2. Curación y partículas individuales para todos los aliados en un radio de 10 bloques (incluyendo al caster si no tiene tag 'ene')
execute as @a[distance=..10,tag=!ene] at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
execute as @a[distance=..10,tag=!ene] run effect give @s minecraft:instant_health 1 2 true
execute as @a[distance=..10,tag=!ene] run effect give @s minecraft:saturation 1 10 true
