## --- Impulso Súbito (En Enfriamiento) ---
## Se ejecuta cuando el jugador intenta usar la habilidad pero está en CD.

# 1. Reproducir un sonido de "fallo"
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1

# 2. Mostrar un mensaje en la barra de acción
title @s actionbar {"text":"Impulso Súbito en enfriamiento","color":"red"}

# 3. Limpiar el ítem para no generar spam de mensajes
#kill @e[type=item,nbt={Item:{tag:{mov_dash:1b}}},distance=..4,limit=1,sort=nearest]
# 4. Re-dar el ítem para que el jugador pueda intentar usarlo de nuevo después del CD
#give @s feather{mov_dash:1b,display:{Name:'[{"text":"Impulso Súbito","italic":false,"color":"aqua"}]',Lore:['[{"text":"Tirar para usar","italic":false,"color":"gray"}]']}} 1
