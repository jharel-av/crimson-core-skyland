# ON_COOLDOWN: Se ejecuta cuando se intenta usar la habilidad pero está en enfriamiento.

# Feedback para el jugador
title @s actionbar {"text":"¡Aura de Sanación en Enfriamiento!","color":"red"}
playsound minecraft:entity.villager.no player @s

# Devolver el ítem al jugador (Old Logic) ya no es necesario
# give @s sunflower{display:{Name:'{"text":"Flor de Vida","color":"yellow","italic":false}'},sup_aura:1b} 1
