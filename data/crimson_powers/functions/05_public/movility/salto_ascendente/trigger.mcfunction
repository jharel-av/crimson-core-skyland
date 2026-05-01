## --- Salto Ascendente (Trigger) ---
## Comprueba si la habilidad se puede usar o está en enfriamiento.

# Salvaguarda: Se asegura de que el jugador tenga el scoreboard para evitar errores.
scoreboard players add @s mov_leap_cd 0

# Comprobar el enfriamiento
execute if score @s mov_leap_cd matches 1.. run function crimson_powers:05_public/movility/salto_ascendente/on_cooldown
execute if score @s mov_leap_cd matches 0 run function crimson_powers:05_public/movility/salto_ascendente/use
