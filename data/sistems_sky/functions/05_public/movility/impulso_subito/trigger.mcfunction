## --- Impulso Súbito (Trigger) ---
## Comprueba si la habilidad se puede usar o está en enfriamiento.

# Salvaguarda: Se asegura de que el jugador tenga el scoreboard para evitar errores.
scoreboard players add @s mov_dash_cd 0

# Comprobar el enfriamiento
execute if score @s mov_dash_cd matches 1.. run function sistems_sky:05_public/movility/impulso_subito/on_cooldown
execute if score @s mov_dash_cd matches 0 run function sistems_sky:05_public/movility/impulso_subito/use
