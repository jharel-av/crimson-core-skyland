# Inicia la secuencia de la habilidad "Stun Perfecto".

# 1. Inicia el cooldown de 40s (800 ticks).
scoreboard players set @s stun_perfecto_cd 800

# 2. Otorga Velocidad 2 por 3 segundos al jugador.
effect give @s minecraft:speed 4 2 true

# 3. Inicia el contador de 3 segundos (60 ticks) para la explosión del stun.
tag @s add stun_en_curso
scoreboard players set @s stun_timer 60

# 4. Mensaje de activación
tellraw @s {"text":"¡Cargando Stun!","color":"aqua"}

# 5. Devuelve el item al jugador.
# give @s heart_of_the_sea{display:{Name:'[{"text":"Stun Pesado","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Un pulso pesado y lento emana","italic":false,"color":"gray"}]','[{"text":"de este extraño artefacto.","italic":false,"color":"gray"}]']},StunPerfecto:1b,Enchantments:[{}]} 1