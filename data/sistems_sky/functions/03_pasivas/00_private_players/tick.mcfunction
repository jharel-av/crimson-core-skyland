# warn-off-file execute-group
# =================================================================
# TICK DE PASIVAS DE JUGADORES
# -----------------------------------------------------------------

## Jugadores:
# ---



## Publicas:
# Ataque: atk
execute as @a[tag=atk] unless score @s kit_atk matches ..1 run function sistems_sky:03_pasivas/00_private_players/0_public/atk_01
# Movilidad: mov
execute as @a[tag=mov] unless score @s kit_mov matches ..1 run function sistems_sky:03_pasivas/00_private_players/0_public/mov_02
# Soporte: sup
execute as @a[tag=sup] unless score @s kit_sup matches ..1 run function sistems_sky:03_pasivas/00_private_players/0_public/sup_03/sup_03
# Soporte: sup (Solo si Shiftea)
execute as @a[tag=sup] at @s if predicate sistems_sky:sneak run function sistems_sky:03_pasivas/00_private_players/0_public/sup_03/apply_effects
# Tanque: tanque
execute as @a[tag=tanque] run function sistems_sky:03_pasivas/00_private_players/0_public/tnk_04/tick
execute as @a[tag=tanque] at @s run function sistems_sky:03_pasivas/00_private_players/0_public/tnk_04/tick