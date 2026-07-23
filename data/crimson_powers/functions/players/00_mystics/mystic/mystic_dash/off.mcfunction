## Habilidad: Mystic Dash OFF.
#
## ITEM give @s carrot_on_a_stick{d_dash:1b,CustomModelData:1,HideFlags:5,Unbreakable:1b,display:{Name:'["",{"text":"| ","italic":false,"color":"dark_green"},{"text":"Mystic Dash","italic":false,"color":"green","bold":true},{"text":" |","italic":false,"color":"dark_green"}]',Lore:['[""]','["",{"text":"► Habilidad Activa:","italic":false,"color":"dark_green"}]','[""]','["",{"text":"● ","italic":false,"color":"dark_green"},{"text":"+ Vel. Base: 20/40/60%","color":"green"}]','["",{"text":"    (Shift+Click para Cambiar)","italic":true,"color":"gray"}]','["",{"text":"● ","italic":false,"color":"dark_green"},{"text":"+8 Daño de Ataque Extra","color":"green"}]','["",{"text":"● ","italic":false,"color":"dark_green"},{"text":"Super Salto IV","color":"green"}]','[""]','["",{"text":"Usa Click Derecho para activar.","italic":false,"color":"gray"}]','[""]']},Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1
#

## Step 3: Clear Efectos de la habilidad

attribute @s minecraft:generic.movement_speed modifier remove 11111111-1111-1111-1112-111111111111
attribute @s minecraft:generic.attack_damage modifier remove 11111111-1111-1111-1111-111111111112
effect clear @s jump_boost
playsound entity.experience_orb.pickup master @s ~ ~ ~ 10 0 1

tag @s remove MysticDash 
scoreboard players set @s mc_dash 0
execute at @s run particle minecraft:happy_villager ~ ~ ~ 3 2 3 1 50 force

#Si esta disponible la transformación se llama al archivo de ON-Mods
function crimson_powers:compat/00_mystic/00_router/morp