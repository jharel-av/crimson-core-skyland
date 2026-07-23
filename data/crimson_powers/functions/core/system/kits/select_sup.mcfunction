execute if entity @s[tag=init_kit] run tellraw @s {"text":"Ya tienes una clase asignada. Usa el botón de recuperar.","color":"red"}

execute unless entity @s[tag=init_kit] run tag @s add sup
execute unless entity @s[tag=init_kit] run tag @s add init_kit
execute if entity @s[tag=sup] run tellraw @s {"text":"¡Has seleccionado la clase de Soporte!","color":"green"}
execute if entity @s[tag=sup] run function crimson_powers:core/system/0_public/first_sup
