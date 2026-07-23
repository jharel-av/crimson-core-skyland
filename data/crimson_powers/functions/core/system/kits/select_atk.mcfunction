# Si el jugador de casualidad corre el comando pero ya tiene kit, lo ignoramos por seguridad
execute if entity @s[tag=init_kit] run tellraw @s {"text":"Ya tienes una clase asignada. Usa el botón de recuperar.","color":"red"}

# Asignar clase de Ataque
execute unless entity @s[tag=init_kit] run tag @s add atk
execute unless entity @s[tag=init_kit] run tag @s add init_kit
execute if entity @s[tag=atk] run tellraw @s {"text":"¡Has seleccionado la clase de Ataque!","color":"green"}
execute if entity @s[tag=atk] run function crimson_powers:core/system/0_public/first_atk
