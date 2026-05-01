# Skyland Engine - Core Load
# Se ejecuta CADA VEZ que se recarga/carga el datapack.

# DEBUG: Muestra el mensaje de recarga o carga inicial.
tellraw @a[tag=admin] [{"text":"[Skyland Engine]","color":"gold"},{"text":" Core v2.0 se esta cargando.","color":"yellow"}]
# Ejecuta Las Funciones Necesarias de 1 Solo uso del Datapack
  # Inicializar scoreboards (Solo si no existen, mantiene datos previos)
function fun_skyland:core/first_time_setup
  # Ejecución de Modulos:
    # Zonas (NP y LP)
function fun_skyland:zonas/setup
    # Anticaidas y Checkpoints
function fun_skyland:checkpoints/load
    # Sistemas de xLejks
function fun_skyland:xlejks_core/load

