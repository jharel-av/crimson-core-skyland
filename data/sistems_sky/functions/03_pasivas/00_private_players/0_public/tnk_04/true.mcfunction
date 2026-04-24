# warn-off-file execute-group
# Aplica los atributos pasivos a los jugadores con el tag "tanque" que no los hayan recibido aún.

# Atributos base
attribute @s minecraft:generic.max_health base set 46
attribute @s minecraft:generic.armor base set 8

# Modificadores de velocidad
attribute @s minecraft:generic.movement_speed modifier add 5b8f338e-4d24-453a-8148-f54c85a8a654 "Tank Slow" -0.20 multiply_base
attribute @s minecraft:generic.attack_speed modifier add 2f9b2b5a-5e45-4ea3-b40b-17c38865ac8c "Tank Attack Slow" -0.20 multiply_base

# Cura al jugador a su nueva vida máxima y marca los pasivos como aplicados
effect give @s[tag=!tanque_passives_applied] minecraft:instant_health 1 255 true
tag @s add tanque_passives_applied
execute unless score @s kit_tnk matches 1 run tellraw @s {"text":"Bienvenido a la Clase de Tanque!","color":"green"}
execute unless score @s kit_tnk matches 1 run function sistems_sky:04_sistema/0_public/first_tnk
# Scoreboard para marcar que el jugador tiene la pasiva de tanque activa
scoreboard players set @s kit_tnk 1
# Reinicia los Scoreboards de CD de las habilidades para que el jugador pueda usarlas inmediatamente
scoreboard players set @s stun_perfecto_cd 0