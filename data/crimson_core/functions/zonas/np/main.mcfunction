# Sistema NP Main -> Lógica principal de las zonas NP
# Se ejecuta cada tick desde crimson_core:zonas/main

# 1. Resetea el score para todos los jugadores.
scoreboard players set @a sl.zone.np 0

# 2. Ejecuta la detección de área para TODOS los markers NP que existan.
execute as @e[type=marker,tag=sl.zone.np] at @s run function crimson_core:zonas/np/run_area_checks_for_marker

# 3. Chequea si la zona es nueva
function crimson_core:zonas/np/check_new

# 4. Gestiona el cambio de modo de juego para jugadores que entran o salen de la zona.
#    Excluye a PlayMakers y admins de este cambio.
gamemode adventure @a[scores={sl.zone.np=1},tag=!np,team=!PlayMaker,team=!PlayMaker2,tag=!admin]
gamemode survival @a[scores={sl.zone.np=0},tag=np,team=!PlayMaker,team=!PlayMaker2,tag=!admin]

# 5. Aplica o quita el tag 'np' basado en el score.
tag @a[scores={sl.zone.np=1},tag=!np] add np
tag @a[scores={sl.zone.np=0},tag=np] remove np


# --- DEBUG ---
execute as @a[tag=dev] run title @s actionbar [{"text":"Score NP: "},{"score":{"name":"@s","objective":"sl.zone.np"}}]
