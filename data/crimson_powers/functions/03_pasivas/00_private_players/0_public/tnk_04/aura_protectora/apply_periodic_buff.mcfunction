# Aplica los efectos de Protección y Regeneración y resetea el contador.
# Es llamada por sneaking_logic.mcfunction

effect give @s minecraft:resistance 4 1 true
effect give @s minecraft:regeneration 2 1 true
effect give @s minecraft:saturation 1 1 true
scoreboard players set @s tap_cd 0
