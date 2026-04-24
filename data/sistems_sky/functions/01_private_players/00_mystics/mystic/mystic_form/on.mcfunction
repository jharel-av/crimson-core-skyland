# === Mystic Form (Switch ON) ===
# Se ejecuta cuando Dygo tira el item 'MysticFormOff'.

## Step 1: ITem:
# give @s carrot_on_a_stick{d_mcform:1b,CustomModelData:2,HideFlags:5,Unbreakable:1b,display:{Name:'[{"text":"| ","italic":false,"color":"dark_purple"},{"text":"Mystic Form","bold":true,"italic":false,"color":"light_purple"},{"text":" |","italic":false,"color":"dark_purple"}]',Lore:['[""]','[{"text":"► Forma Mística Activada:","italic":false,"color":"light_purple"}]','[""]','["",{"text":"● ","italic":false,"color":"gold"},{"text":"+30% Velocidad Base","italic":false,"color":"yellow"}]','["",{"text":"● ","italic":false,"color":"gold"},{"text":"+10 Vida Máxima","italic":false,"color":"yellow"}]','["",{"text":"● ","italic":false,"color":"gold"},{"text":"+4 Daño de Ataque","italic":false,"color":"yellow"}]','[""]','["",{"text":"Click Derecho para Activar.","italic":false,"color":"gray"}]','[""]']},Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1 

## Step 3: Aplicar los modificadores de atributos
# Velocidad (+30% Base)
attribute @s minecraft:generic.movement_speed modifier add 11111111-1111-1111-1111-111111111111 "Mystic Form Speed" 0.32 multiply
# Vida (+10 Puntos = 5 Corazones)
attribute @s minecraft:generic.max_health modifier add 22222222-2222-2222-2222-222222222222 "Mystic Form Health" 15 add
# Daño (+4 Puntos = 2 Corazones)
attribute @s minecraft:generic.attack_damage modifier add 33333333-3333-3333-3333-333333333333 "Mystic Form Attack" 0.5 multiply

## Step 4: Feedback visual y sonoro
tag @s add MysticForm
scoreboard players set @s mc_form 1
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1.2
particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 100

# Si esta disponible la transformación se llama al archivo de ON-Mods
function sistems_sky:10_on_mods/00_mystic/00_router/morp 
