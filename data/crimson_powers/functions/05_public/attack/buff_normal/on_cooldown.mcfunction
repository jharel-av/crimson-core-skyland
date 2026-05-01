# Se ejecuta cuando la habilidad NO está disponible (en cooldown).

# 0. Devolver el item al jugador (logica Anterior) tag: atk_bff:1b
# give @s minecraft:glistering_melon_slice{display:{Name:'{"text":"Frenesi de Ataque","color":"red","italic":false}',Lore:['{"text":"Entras en un estado de freneci donde tus instintos","color":"gray","italic":false}','{"text":"se vuelven mas rapidos y fuertes temporalmente,","color":"gray","italic":false}','{"text":"durante 13 segundos maximo.","color":"gray","italic":false}']},atk_bff:1b,Unbreakable:false,HideFlags:1} 1

# 1. Notificar al jugador
tellraw @s {"text":"¡Frenesí de Ataque está en enfriamiento!","color":"yellow"}
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
