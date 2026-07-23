execute if entity @s[tag=atk] run function crimson_powers:core/system/0_public/first_atk
execute if entity @s[tag=mov] run function crimson_powers:core/system/0_public/first_mov
execute if entity @s[tag=sup] run function crimson_powers:core/system/0_public/first_sup
execute if entity @s[tag=tnk] run function crimson_powers:core/system/0_public/first_tnk
tellraw @s {"text":"Tus ítems de clase han sido recuperados.","color":"green"}
