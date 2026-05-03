# Crimson Core - Configuración Inicial
# Se ejecuta en cada reload para asegurar que los scoreboards existan.

# 1. Scoreboards internos (sl.link.id eliminado por desuso)
# scoreboard objectives add sl.internal.temp dummy "Calculos Internos"

# 2. Variables Globales y Contadores Persistentes
scoreboard objectives add skyland_data dummy "Datos Globales Crimson Core"
scoreboard objectives add lp_state dummy "Máquina de Estados Zonas LP"
scoreboard objectives add skyland.vt.count dummy "Contador Totem Vacio"

