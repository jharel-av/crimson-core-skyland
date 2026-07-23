# =================================================================
# TICK DE JUGADORES ESPECÍFICOS
# -----------------------------------------------------------------
# Este archivo se ejecuta en cada tick y actúa como un despachador
# para la lógica pasiva o que requiere verificación contínua de
# aquellos jugadores que tienen habilidades únicas.
#
# Cada línea ejecuta la función de router pasivo para un jugador
# específico que tenga su tag correspondiente.
#
# -----------------------------------------------------------------
# RECOMENDACIÓN: Para hacer este sistema más escalable, considera
# usar un "Function Tag" (ej: #crimson_powers:player_passive_ticks)
# que agrupe las funciones de todos los jugadores. Así, solo
# necesitarías una línea en este archivo.
# =================================================================

# --- Dygo ---
execute as @a[tag=dygo] at @s run function crimson_powers:players/01_dygo/router/pasivas