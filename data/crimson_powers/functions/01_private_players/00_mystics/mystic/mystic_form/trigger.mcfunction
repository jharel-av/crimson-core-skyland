scoreboard players add @s mc_form 0

execute if score @s mc_form matches 1 run tag @s add apagar_form
execute if score @s mc_form matches 0 run tag @s add prender_form

execute if entity @s[tag=apagar_form] run function crimson_powers:01_private_players/00_mystics/mystic/mystic_form/off
execute if entity @s[tag=prender_form] run function crimson_powers:01_private_players/00_mystics/mystic/mystic_form/on

tag @s remove apagar_form
tag @s remove prender_form