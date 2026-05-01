
# 1. A los jugadores que YA tienen el buff y siguen cerca del tanque, les reiniciamos el contador a 0 para que no se les acabe.
scoreboard players set @a[distance=..5,tag=aura_tank] tap_g 0
scoreboard players add @a[distance=..5,tag=aura_tank] tap_cd 1
# 2. A los jugadores que están cerca del tanque pero AÚN NO tienen el buff, se lo aplicamos.
execute as @a[distance=..5,tag=!aura_tank,tag=!tanque] run function crimson_powers:03_pasivas/00_private_players/0_public/tnk_04/aura_protectora/on
# 3. Buff al tanque.
execute if entity @s[tag=!aura_tank] run function crimson_powers:03_pasivas/00_private_players/0_public/tnk_04/aura_protectora/on_tank