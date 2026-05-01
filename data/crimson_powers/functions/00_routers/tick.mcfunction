# =================================================================
# TICK DEL ROUTER PRINCIPAL
# -----------------------------------------------------------------
# Este archivo es el punto de entrada para la lógica de eventos de
# todos los jugadores.
#
# Se ejecuta para cada jugador (@a) en cada tick del juego,
# llamando a la siguiente fase del router ('types'), que se encarga
# de detectar acciones específicas como clicks o muertes.
# =================================================================

execute as @a at @s run function crimson_powers:00_routers/types
