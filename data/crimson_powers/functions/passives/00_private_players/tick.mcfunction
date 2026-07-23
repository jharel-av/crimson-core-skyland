# warn-off-file execute-group
# =================================================================
# TICK DE PASIVAS DE JUGADORES
# -----------------------------------------------------------------

## Jugadores:
# ---



## Publicas:
# Ataque: atk
execute as @a[tag=atk] unless entity @s[tag=init_kit] run function crimson_powers:passives/00_private_players/0_public/atk_01
# Movilidad: mov
execute as @a[tag=mov] unless entity @s[tag=init_kit] run function crimson_powers:passives/00_private_players/0_public/mov_02
# Soporte: sup
execute as @a[tag=sup] unless entity @s[tag=init_kit] run function crimson_powers:passives/00_private_players/0_public/sup_03/sup_03
# Soporte: sup (Solo si Shiftea)
execute as @a[tag=sup] at @s if predicate crimson_powers:sneak run function crimson_powers:passives/00_private_players/0_public/sup_03/apply_effects
# Tanque: tanque
execute as @a[tag=tanque] run function crimson_powers:passives/00_private_players/0_public/tnk_04/tick
execute as @a[tag=tanque] at @s run function crimson_powers:passives/00_private_players/0_public/tnk_04/tick