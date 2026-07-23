# Finaliza el efecto de reducción de vida.
# Es llamada por mobs_tick.mcfunction.

# 1. Remueve el modificador de vida.
attribute @s minecraft:generic.max_health modifier remove c3d9ca0f-7b5c-2b3e-6a81-d7e6f5d4c3c2

# 2. Limpia el tag de control.
tag @s remove stun_health_reduced
