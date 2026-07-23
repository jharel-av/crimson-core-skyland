# warn-off-file execute-group
# Aplica los atributos pasivos para la clase "atk" cada tick.
# Esto asegura que los atributos persistan incluso después de que el jugador muera y reaparezca.

# Atributo de Ataque: +25% Daño
attribute @s minecraft:generic.attack_damage modifier add 51b3e646-f366-418a-a653-34534f8779d7 "Attack Class Attack Bonus" 3 multiply_base

# Atributo de Armadura: +2 Armadura
attribute @s minecraft:generic.armor modifier add c6a0d4b1-8b2a-414e-a6a2-9e0c60b5e4a8 "Attack Class Armor Bonus" 3 add

# Atributo de Velocidad: -1% Velocidad
attribute @s minecraft:generic.movement_speed modifier add 2d15d6a2-3e7f-4c5f-b5a4-2e1c98a5d3f1 "Attack Class Speed Nerf" -0.015 multiply_base

# Atributo de Velocidad de Ataque: +10% Velocidad de Ataque
attribute @s minecraft:generic.attack_speed modifier add 02a35367-1647-4e94-857c-885f9139587a "Attack Class Attack Speed Bonus" -0.025 multiply_base

execute unless score @s kit_atk matches 1 run tellraw @s [{"text":"Bienvenido a la clase de Ataque!","color":"green"}]
# Marcador que evita que la pasiva se re-aplique cada tick, solo se aplica una vez al morir y reaparecer(o ingresar a la clase).
execute unless score @s kit_atk matches 1 run function crimson_powers:core/system/0_public/first_atk
tag @s add init_kit

# Resetea los Scoreboards de las habilidades para que de esta forma se puedan volver a usar después de la muerte(a su vez que da inicio a las habilidades en caso de no haberlas iniciado).
# Buff de Ataque
scoreboard players set @s buff_cd 0
# Robo de Vida
scoreboard players set @s cd_vampiro 0
