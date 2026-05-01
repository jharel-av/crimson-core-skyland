## --- Salto Ascendente (En Enfriamiento) ---
## Se ejecuta cuando el jugador intenta usar la habilidad pero está en CD.

# 1. Reproducir un sonido de "fallo"
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1

# 2. Mostrar un mensaje en la barra de acción
title @s actionbar {"text":"Salto Ascendente en enfriamiento","color":"red"}

# 3. Limpiar el ítem para no generar spam de mensajes
#kill @e[type=item,nbt={Item:{tag:{mov_leap:1b}}},distance=..4,limit=1,sort=nearest]

# 4. devolver el ítem al jugador (en caso de que no se haya recogido)
#give @s rabbit_foot{mov_leap:1b,display:{Name:'[{"text":"Salto Ascendente","italic":false,"color":"green"}]',Lore:['[{"text":"Tirar para usar","italic":false,"color":"gray"}]']}} 1

