# -------------------------------------------------------------------------
# Cargador(iniciador) de Pasivas de todos los Jugadores (o pasivas por kit)
# -------------------------------------------------------------------------
# =========================================================================
# Este archivo se encarga de cargar las pasivas de los jugadores, independientemente de su kit o clase.
# Se ejecuta al iniciar el juego.

## Scoreboard detector de kits para jugadores
scoreboard objectives add kit_atk dummy
scoreboard objectives add kit_mov dummy
scoreboard objectives add kit_sup dummy
scoreboard objectives add kit_tnk dummy