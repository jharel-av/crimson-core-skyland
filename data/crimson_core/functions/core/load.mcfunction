# Skyland Engine - Core Load
# Se ejecuta CADA VEZ que se recarga/carga el datapack.

# DEBUG: Muestra el mensaje de recarga o carga inicial.
tellraw @a[tag=admin] [{"text":"[Skyland Engine]","color":"gold"},{"text":" Core v2.0 se esta cargando.","color":"yellow"}]
# Ejecuta Las Funciones Necesarias de 1 Solo uso del Datapack
  # Inicializar scoreboards (Solo si no existen, mantiene datos previos)
function crimson_core:core/first_time_setup
  # Ejecución de Modulos:
    # Zonas (NP y LP)
function crimson_core:zonas/setup
    # Anticaidas y Checkpoints
function crimson_core:checkpoints/load
    # Sistemas de xLejks
function crimson_core:xlejks_core/load

