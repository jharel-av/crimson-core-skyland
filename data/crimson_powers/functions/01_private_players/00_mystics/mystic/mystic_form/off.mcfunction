# === Mystic Form (Switch OFF) ===
# Se ejecuta cuando Dygo tira el item 'MysticFormOn'.

## Step 1: ITEM
# give @s carrot_on_a_stick{d_mcform:1b,CustomModelData:2,HideFlags:5,Unbreakable:1b,display:{Name:'[{"text":"| ","italic":false,"color":"dark_purple"},{"text":"Mystic Form","bold":true,"italic":false,"color":"light_purple"},{"text":" |","italic":false,"color":"dark_purple"}]',Lore:['[""]','[{"text":"► Forma Mística Activada:","italic":false,"color":"light_purple"}]','[""]','["",{"text":"● ","italic":false,"color":"gold"},{"text":"+30% Velocidad Base","italic":false,"color":"yellow"}]','["",{"text":"● ","italic":false,"color":"gold"},{"text":"+10 Vida Máxima","italic":false,"color":"yellow"}]','["",{"text":"● ","italic":false,"color":"gold"},{"text":"+4 Daño de Ataque","italic":false,"color":"yellow"}]','[""]','["",{"text":"Click Derecho para Activar.","italic":false,"color":"gray"}]','[""]']},Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1

## Step 3: Quitar los modificadores de atributos
attribute @s minecraft:generic.movement_speed modifier remove 11111111-1111-1111-1111-111111111111
attribute @s minecraft:generic.max_health modifier remove 22222222-2222-2222-2222-222222222222
attribute @s minecraft:generic.attack_damage modifier remove 33333333-3333-3333-3333-333333333333


## Step 4: Feedback visual y sonoro
tag @s remove MysticFormDygo
scoreboard players set @s mc_form 0
playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 1.2
particle minecraft:smoke ~ ~1 ~ 0.5 1 0.5 0.05 100

#Si esta disponible la transformación se llama al archivo de ON-Mods
function crimson_powers:10_on_mods/00_mystic/00_router/morp
