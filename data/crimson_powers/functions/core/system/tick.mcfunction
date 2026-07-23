# ----------------------------------
## Ticks de Sistemas de los Jugadores
# ----------------------------------

## Dygo:
function crimson_powers:core/system/sys_players/01_dygo/tick

## Sistema Inicial:
# Dar el selector a los jugadores nuevos que entran por primera vez
execute as @a[tag=!has_menu] run function crimson_powers:core/system/kits/give_menu
execute as @a[tag=!has_menu] run tag @s add has_menu