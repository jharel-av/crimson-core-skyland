## --- Salto Ascendente ---
## Esta función es el núcleo de la habilidad.

# 1. Aplicar enfriamiento (240 ticks = 12 segundos)
scoreboard players set @s mov_leap_cd 240

# 2. Impulsar al jugador hacia arriba y darle aterrizaje seguro
effect give @s minecraft:levitation 1 10 true
effect give @s minecraft:slow_falling 6 0 true

# 3. Efectos visuales y sonoros
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.1 50
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5

# 4. Limpiar el ítem del suelo (Pata de Conejo)
#kill @e[type=item,nbt={Item:{tag:{mov_leap:1b}}},distance=..4,limit=1,sort=nearest]

# 5. devolver el ítem al jugador (en caso de que no se haya recogido)
#give @s rabbit_foot{mov_leap:1b,display:{Name:'[{"text":"Salto Ascendente","italic":false,"color":"green"}]',Lore:['[{"text":"Tirar para usar","italic":false,"color":"gray"}]']}} 1

