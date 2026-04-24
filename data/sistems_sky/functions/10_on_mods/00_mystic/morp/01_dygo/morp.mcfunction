# ------------------------------------------------------------------------------
# Archivo: morp.mcfunction
# Descripción: Archivo especifico para realizar cambio de skin del jugador en caso este disponible, de no estarlo no se ejecutara el comando de cambio de skin, esto para evitar que se ejecute el comando de cambio de skin a una skin que no existe y se quede con la skin por defecto del jugador.
# -------------------------------------------------------------------------------

# Comando para cambiar la skin del jugador a la skin por defecto cuando no tiene activado ni Mystic Dash ni Mystic Form de Mod Custom Player Models (CPM).
# Mystic Dash: ----------
execute if score @s mc_dash matches 0 if score @s mc_form matches 0 run cpm setskin -r @s

# Comando para cambiar la skin del jugador a la skin de Dygo cuando activa el Mystic Dash de Mod Custom Player Models (CPM).
# Mystic Dash ----------
execute if score @s mc_form matches 0 if score @s mc_dash matches 1 run cpm setskin -f @s UwsBAQQjInA6MzAwZmI1NzU3NWRlNDhjMThkYTNlMTE4ZGMzZDQxOWEAAAm9

# Comando para cambiar la skin del jugador a la skin de Dygo cuando activa el Mystic Form de Mod Custom Player Models (CPM).
## Mystic Form tiene prioridad sobre Mystic Dash, por lo que se verifica primero si el jugador tiene activado Mystic Form antes de verificar Mystic Dash.
# Mystic Form: ----------
execute if score @s mc_form matches 1 if score @s mc_dash matches 0.. run cpm setskin -f @s UwsBAQQjInA6N2I1ZDdjMmI1ZjgxNGZmNWIyMDVhNmQ1NjdkMmZjZWEAAApU

