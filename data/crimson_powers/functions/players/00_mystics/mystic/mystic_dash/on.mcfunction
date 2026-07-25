## Habilidad Mystic Dash Switch ON
#
## ITEM give @s carrot_on_a_stick{d_dash:1b,CustomModelData:1,HideFlags:5,Unbreakable:1b,display:{Name:'["",{"text":"| ","italic":false,"color":"dark_green"},{"text":"Mystic Dash","italic":false,"color":"green","bold":true},{"text":" |","italic":false,"color":"dark_green"}]',Lore:['[""]','["",{"text":"► Habilidad Activa:","italic":false,"color":"dark_green"}]','[""]','["",{"text":"● ","italic":false,"color":"dark_green"},{"text":"+ Vel. Base: 20/40/60%","color":"green"}]','["",{"text":"    (Shift+Click para Cambiar)","italic":true,"color":"gray"}]','["",{"text":"● ","italic":false,"color":"dark_green"},{"text":"+8 Daño de Ataque Extra","color":"green"}]','["",{"text":"● ","italic":false,"color":"dark_green"},{"text":"Super Salto IV","color":"green"}]','[""]','["",{"text":"Usa Click Derecho para activar.","italic":false,"color":"gray"}]','[""]']},Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1
#
#
## Step 1: Detecta y Aplica Effectos segun nivel
execute if score @s dash_est matches 0 run function crimson_powers:players/00_mystics/mystic/mystic_dash/nivel/md_1
execute if score @s dash_est matches 1 run function crimson_powers:players/00_mystics/mystic/mystic_dash/nivel/md_2
execute if score @s dash_est matches 2 run function crimson_powers:players/00_mystics/mystic/mystic_dash/nivel/md_3
# Efecto de Partículas y Sonido al Activar la Habilidad
function crimson_powers:visuals/01_dygo/mystic_dash_on
#
tag @s add MysticDash
scoreboard players set @s mc_dash 1

#Si esta disponible la transformación se llama al archivo de ON-Mods
function crimson_powers:compat/00_mystic/00_router/morp