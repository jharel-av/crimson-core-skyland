# Muestra un mensaje en la action bar indicando que la habilidad está en enfriamiento.
tellraw @s {"text":"Stun Perfecto está en enfriamiento.","color":"red"}
# 1. Otorga Velocidad 2 por 3 segundos al jugador para ayudarlo a correr un poco (independientemente de la duración del cooldown).
effect give @s minecraft:speed 4 2 true


# 2. Devuelve el item al jugador.
# give @s heart_of_the_sea{display:{Name:'[{"text":"Stun Pesado","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Un pulso pesado y lento emana","italic":false,"color":"gray"}]','[{"text":"de este extraño artefacto.","italic":false,"color":"gray"}]']},StunPerfecto:1b,Enchantments:[{}]} 1