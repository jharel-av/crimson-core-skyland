# ===================================
# SKYLAND ENGINE - GENERAL ANTI-FALL - LOAD
# ===================================

# Mensaje de carga
tellraw @a[tag=admin] [{"text":"[Skyland Engine]","color":"gold"},{"text":" Módulo de Anticaídas General (anticaidas) cargado.","color":"aqua"}]

# Scoreboard para este módulo específico.
scoreboard objectives add ac_gen_height dummy
