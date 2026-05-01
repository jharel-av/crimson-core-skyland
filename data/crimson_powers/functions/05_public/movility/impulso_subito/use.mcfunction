## --- Impulso Súbito ---
## Esta función es el núcleo de la habilidad.

# 1. Aplicar enfriamiento (240 ticks = 12 segundos)
scoreboard players set @s mov_dash_cd 240

# 2. Impulsar al jugador (4 bloques adelante, 2 arriba) solo si tiene 2 bloques de aire sobre él
execute at @s if block ^ ^2 ^6 air if block ^ ^3 ^6 air run tp @s ^ ^2 ^6

# 3. Efectos visuales y sonoros
particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0.05 15
playsound minecraft:item.trident.riptide_1 master @s ~ ~ ~

# 3.5. Limpiar el ítem del suelo para que no se active repetidamente (logica antigua ya no se usa) 
#kill @e[nbt={Item:{tag:{mov_dash:1b}}},distance=..4,limit=1,sort=nearest,type=item]
#give @s feather{mov_dash:1b,display:{Name:'[{"text":"Impulso Súbito","italic":false,"color":"aqua"}]',Lore:['[{"text":"Tirar para usar","italic":false,"color":"gray"}]']}} 1

