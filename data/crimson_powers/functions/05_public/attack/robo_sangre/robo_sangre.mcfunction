# Función principal de la habilidad Robo de Sangre para la clase Atk.
## Scoreboard aumentado
scoreboard players set @s cd_vampiro 130
# Habilidad de Robo de Sangre para la clase Atk.
effect give @s instant_health 1 0 true
playsound minecraft:entity.wither.ambient master @a[distance=..5] ~ ~ ~ 0.5 2 1
particle minecraft:dust 0.8 0 0 1.5 ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
