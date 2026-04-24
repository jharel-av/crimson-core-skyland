## Sistemas de acctivación por Muertes (Reinicio de Pasivas ETC)
# =================================================================
# TICK DEL ROUTER PRINCIPAL
# -----------------------------------------------------------------
# Este archivo se encarga de detectar eventos relacionados con las muertes

## Ticks de  Muerte cada 7 segundos (140 ticks)
# Esta función envia un tick de 7 segundos hacia la categoria de sistemas, cuando el tick llega a 0, se ejecutan las pasivas y habilidades (incluidas las relacionadas con las muertes) este sistema solo estara activo si el scoreboard global "death_tick" es igual a 1(Explicación: dado el caso no exista retraso en reaparición, el tick vuelve a 0 y por ende cambia a ejecucion instantanea en vez de ejecución cada 7 segundos, esto se hace para evitar que el tick se ejecute tarde si ya no existe retraso en la reaparición del jugador).


## Ticks de Muerte Publicos (atk, mov, sup, tanque)
# - Este tick de muerte es instantaneo debido a que modifica atributos y no espera a efectos ni muestra efectos visuales, solo aplica pasivas)
# Ataque:
execute if entity @s[tag=atk] run function sistems_sky:03_pasivas/00_private_players/0_public/atk_01
# Movimiento:
execute if entity @s[tag=mov] run function sistems_sky:03_pasivas/00_private_players/0_public/mov_02
# Tanque:
execute if entity @s[tag=tanque] run function sistems_sky:03_pasivas/00_private_players/0_public/tnk_04/true
# Soporte:
execute if entity @s[tag=sup] run function sistems_sky:03_pasivas/00_private_players/0_public/sup_03/sup_03


# - Reinicio del tick de muerte global
scoreboard players set @s death_co 0
