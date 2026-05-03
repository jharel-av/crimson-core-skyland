# --- Eliminar Zona NP Cercana ---
# Elimina el marker de zona NP más cercano en un radio de 5 bloques.

tellraw @s [{"text":"[Admin]","color":"red"},{"text":" Intentando eliminar la zona NP más cercana...","color":"gray"}]
kill @e[type=marker,tag=sl.zone.np,distance=..5,limit=1,sort=nearest]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
