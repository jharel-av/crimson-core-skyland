# Router para la detección de áreas NP de altura ilimitada
# Ejecuta la función de chequeo apropiada según el tag de tamaño del marker @s.

execute if entity @s[tag=sl.zone.size.10x10] run function crimson_core:modules/areas/no_protec/sizes/check_area_10x10
execute if entity @s[tag=sl.zone.size.50x50] run function crimson_core:modules/areas/no_protec/sizes/check_area_50x50
execute if entity @s[tag=sl.zone.size.100x100] run function crimson_core:modules/areas/no_protec/sizes/check_area_100x100
execute if entity @s[tag=sl.zone.size.210x210] run function crimson_core:modules/areas/no_protec/sizes/check_area_210x210
