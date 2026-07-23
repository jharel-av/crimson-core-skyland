# =================================================================
# CARGA PRINCIPAL DEL DATAPACK (LOAD)
# -----------------------------------------------------------------
# Este archivo se ejecuta una sola vez cuando el datapack es
# cargado (/reload o al iniciar el mundo).
#
# Actúa como un despachador para la inicialización, llamando a los
# archivos de carga de los diferentes subsistemas para que preparen
# scoreboards, tags, etc.
# =================================================================

## Llamada a los archivos de carga de cada subsistema
# Carga de Routers (Eventos y Activadores) 00_routers
function crimson_powers:core/events/load
# Carga de Pasivas 03_pasivas
function crimson_powers:passives/load
# Carga de Activas 04_activas
function crimson_powers:abilities/load