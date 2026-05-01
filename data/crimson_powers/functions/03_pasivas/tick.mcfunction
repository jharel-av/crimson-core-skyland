# =================================================================
# TICK DE HABILIDADES PASIVAS
# -----------------------------------------------------------------
# Este archivo está destinado a manejar la lógica de tick para
# habilidades pasivas generales que no son específicas de un jugador
# (por ejemplo, las pasivas de los "PlayMakers").
#
# Actualmente, no se ejecuta ninguna lógica directamente desde aquí,
# ya que el sistema de pasivas se gestiona en sub-funciones
# llamadas desde otros lugares. Este archivo se mantiene por
# consistencia en la arquitectura.
# =================================================================

## 00_private_players (Pasivas de jugadores específicos o Sistemas de pasivas por tick)
# Jugadores:
function crimson_powers:03_pasivas/00_private_players/tick
## 01_playmakers (Pasivas de PlayMakers) 
# Playmakers Pasives:
function crimson_powers:03_pasivas/01_playmakers/tick
