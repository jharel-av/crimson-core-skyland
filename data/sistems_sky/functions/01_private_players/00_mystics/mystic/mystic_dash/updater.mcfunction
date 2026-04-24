# -----------------------------------------------------------------
# Archivo: mystic_dash/updater.mcfunction
# Aqui se Corre el sistema de actualización de la habilidad Mystic Dash.
# -----------------------------------------------------------------
# 2. Si la habilidad está ACTIVA, hacemos la transición suave
# Primero limpiamos el nivel anterior:
function sistems_sky:01_private_players/00_mystics/mystic/mystic_dash/clear_stats
# Luego cargamos las stats del nuevo nivel:
execute if score @s dash_est matches 0 run function sistems_sky:01_private_players/00_mystics/mystic/mystic_dash/nivel/md_1
execute if score @s dash_est matches 1 run function sistems_sky:01_private_players/00_mystics/mystic/mystic_dash/nivel/md_2
execute if score @s dash_est matches 2 run function sistems_sky:01_private_players/00_mystics/mystic/mystic_dash/nivel/md_3
