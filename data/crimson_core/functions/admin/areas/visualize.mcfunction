# --- Visualizar Zonas NP ---
# Aplica un efecto de brillo a todos los markers de zona NP por 10 segundos.
execute at @e[type=marker,tag=sl.zone.np] run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.01 50

tellraw @s [{"text":"[Admin]","color":"red"},{"text":" Visualizando todas las zonas NP por 10 segundos.","color":"gray"}]