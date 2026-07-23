# Mystic Dash - EN caso de que el scoreboard no este activo se suma +0 para evitar errores.
scoreboard players add @s mc_dash 0
scoreboard players add @s dash_est 0


execute if score @s mc_dash matches 1 run tag @s add apagar_dash
execute if score @s mc_dash matches 0 run tag @s add prender_dash

execute if entity @s[tag=apagar_dash] run function crimson_powers:players/00_mystics/mystic/mystic_dash/off
execute if entity @s[tag=prender_dash] run function crimson_powers:players/00_mystics/mystic/mystic_dash/on

tag @s remove apagar_dash
tag @s remove prender_dash