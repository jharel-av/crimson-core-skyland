# APPLY_EFFECTS v2: Aplica los buffs de Luz Sagrada con targeting corregido.

# --- Efectos para el propio jugador ---
# Compensación de velocidad para poder moverse mientras está agachado.
effect give @s minecraft:speed 1 1 true

# --- Efectos para aliados cercanos (excluyendo al lanzador) ---
# Radio de 10 bloques, no afecta a jugadores con tag "ene".
execute as @a[distance=..10,tag=!ene] at @s run function crimson_powers:03_pasivas/00_private_players/0_public/sup_03/effects

# --- Feedback Visual ---
# Partículas de luz alrededor del jugador.
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.2 0.1 0.01 1 force
