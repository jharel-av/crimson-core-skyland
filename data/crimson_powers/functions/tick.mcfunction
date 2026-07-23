# =================================================================
# TICK PRINCIPAL DEL DATAPACK
# -----------------------------------------------------------------
# Este archivo es el corazón del datapack y se ejecuta 20 veces por
# segundo. Su única función es la de ser un despachador (dispatcher),
# llamando en un orden específico a los archivos de tick de cada
# subsistema principal.
#
# El orden de ejecución es crucial para evitar conflictos y asegurar
# que las dependencias se resuelvan correctamente.
# =================================================================

# [0] Llama al router principal, que gestiona eventos de jugadores (clicks, etc.).
function crimson_powers:core/events/tick

# [1] Llama al tick de jugadores, que gestiona lógicas internas de cada uno.
function crimson_powers:players/tick

# [2] Llama al tick de efectos visuales.
function crimson_powers:visuals/tick

# [3] Llama al tick de habilidades pasivas.
function crimson_powers:passives/tick

# [4] Llama al tick de sistemas internos y generales.
function crimson_powers:core/system/tick

# [5] Llama al tick de habilidades públicas (disponibles para todos).
function crimson_powers:abilities/tick

# [10] Llama al tick de compatibilidad con mods.
function crimson_powers:compat/tick