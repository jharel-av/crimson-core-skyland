# Detecta zonas NP recién colocadas que no han sido notificadas
# Se debe ejecutar en el loop principal de zonas NP

# Busca markers NP que NO tengan la tag 'notified'
execute as @e[type=marker,tag=sl.zone.np,tag=!sl.zone.notified] at @s run function crimson_core:modules/areas/no_protec/notify_creation