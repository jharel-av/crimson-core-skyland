# warn-off-file execute-group
## --- Pasivas de Movilidad ---
## Aplica buffs y debuffs permanentes a la clase de movilidad.

# +15% Velocidad de Movimiento
# Usamos UUIDs fijos para que el modificador no se apile.
attribute @s minecraft:generic.movement_speed modifier add 2c55b512-c423-4528-9719-755543666270 "MovilitySpeedBonus" 0.20 multiply_base

# -10% Daño de Ataque
attribute @s minecraft:generic.attack_damage modifier add 8b45a8d2-9592-4b89-81dd-a73420849200 "MovilityDamageDebuff" -0.1 multiply

# +30% Velocidad de Ataque
attribute @s minecraft:generic.attack_speed modifier add d9e8c5d1-9c6a-4b8c-8f8b-285d88698f2b "MovilityAttackSpeedBonus" 0.3 multiply

# Tellraw de bienvenida a la clase 
execute unless score @s kit_mov matches 1 run tellraw @s {"text":"Bienvenido a la Clase de Movilidad!","color":"green"}
execute unless score @s kit_mov matches 1 run function sistems_sky:04_sistema/0_public/first_mov
# Scoreboard para marcar que el jugador tiene la pasiva de movilidad activa
scoreboard players set @s kit_mov 1
# Reinicio de Scoreboards de habilidades (o Puesta en 0 en caso de recien ingresar a la habilidad)
# - Impulso Subito
scoreboard players set @s mov_dash_cd 0
# - Salto Ascendente
scoreboard players set @s mov_leap_cd 0
