# Finaliza el efecto de stun y aplica el de slowness.
# Es llamada por stunned_mob_logic.mcfunction.

# 1. Limpiar el modificador de inmovilización.
attribute @s minecraft:generic.movement_speed modifier remove a1b7a8d7-9b7c-4d5e-8b01-b9a3e8e14a1a

# 2. Aplicar lentitud 2 por 20 segundos (400 ticks).
attribute @s minecraft:generic.movement_speed modifier add b2c8b9e8-8a6d-3c4f-7a92-c8d7f6e54b2b "Stun Slowness" -0.35 multiply_base
scoreboard players set @s slowness_duration 400

# 3. Cambiar el tag de estado.
tag @s remove stun_afectado
tag @s add slowed_by_stun
