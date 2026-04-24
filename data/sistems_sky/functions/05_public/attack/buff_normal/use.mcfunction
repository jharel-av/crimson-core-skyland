# warn-off-file target-selector-no-type
# Se ejecuta cuando la habilidad SÍ está disponible.

# 1. Poner Cooldown (20s * 20t/s = 400 ticks)
scoreboard players set @s buff_cd 400

# 2. Aplicar bufos al jugador (13 segundos)
effect give @s minecraft:strength 13 1 true
effect give @s minecraft:speed 13 1 true

# 3. Aplicar debufos a enemigos (16 segundos, radio de 5 bloques)
# Nota: "team=!aliados" es una salvaguarda opcional por si tienes equipos.
effect give @e[distance=..5,type=!player] minecraft:slowness 16 0 false
effect give @e[distance=..5,type=!player] minecraft:weakness 16 1 false
effect give @e[distance=..5,tag=ene] minecraft:slowness 16 0 false
effect give @e[distance=..5,tag=ene] minecraft:weakness 16 1 false
effect give @e[distance=..5,tag=ene] minecraft:darkness 3 0 false
# 4. Feedback visual y sonoro
tellraw @s {"text":"¡Has activado Frenesí de Ataque!","color":"red"}
particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 100
playsound minecraft:entity.blaze.ambient master @s ~ ~ ~ 1 1

# 5. Devolver el Item al jugador (logica Anterior) tag: atk_bff:1b
#  give @s minecraft:glistering_melon_slice{display:{Name:'{"text":"Frenesi de Ataque","color":"red","italic":false}',Lore:['{"text":"Entras en un estado de freneci donde tus instintos","color":"gray","italic":false}','{"text":"se vuelven mas rapidos y fuertes temporalmente,","color":"gray","italic":false}','{"text":"durante 13 segundos maximo.","color":"gray","italic":false}']},atk_bff:1b,Unbreakable:false,HideFlags:1} 1
