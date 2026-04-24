# warn-off-file execute-group
# mensaje de bienvenida a la categoria de Soporte
execute if entity @s[tag=sup] unless score @s kit_sup matches 1 run tellraw @s {"text":"Bienvenido a la Clase de Soporte!","color":"green"}
execute if entity @s[tag=sup] unless score @s kit_sup matches 1 run function sistems_sky:04_sistema/0_public/first_sup
# Marca el kit de Soporte como aplicado
scoreboard players set @s kit_sup 1
# =================================================================
# Coloca los Scoreards necesarios para el kit de Soporte
# -----------------------------------------------------------------
# Cooldown de Aura de Sanación
scoreboard players set @s cd_aura 0
# Buffs Perfectos
scoreboard players set @s cd_ultimate 0