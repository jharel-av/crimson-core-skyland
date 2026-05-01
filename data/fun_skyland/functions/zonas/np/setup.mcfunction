# Sistema NP Setup -> Inicializa scoreboards y configuraciones para zonas NP
# Se ejecuta desde fun_skyland:zonas/setup

# Scoreboards de Zonas No Protegidas
scoreboard objectives add sl.zone.np dummy

# --- DEBUG (Para los Administradores)---
tellraw @a[tag=admin] [{"text":"[Skyland Engine]","color":"gold"},{"text":" Módulo de Zonas No Protegidas inicializado, Las areas actualmente disponibles para zonas no protegidas son de 10x10 bloques, 50x50 bloques, 100x100 bloques y 200x200 bloques.","color":"yellow"}]
