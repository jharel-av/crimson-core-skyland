# warn-off-file nbt-items-use-if-items
# ---------------------------------
# Router Principal de Dygo
# ---------------------------------


# Habilidades si esta usandose sin shift, funciona normalmente, si se usa shift, se activa un cambio de "modo" de la habilidad, que otorga diferentes efectos(o Velocidades), pero con un mismo item.

# ---Mystic Dash---
execute if entity @s[nbt={SelectedItem:{tag:{d_dash:1b}}},distance=0..] run function sistems_sky:01_private_players/01_dygo/router/mystic_dash
# ---Mystic Form---
execute if entity @s[nbt={SelectedItem:{tag:{d_mcform:1b}}},distance=0..] run function sistems_sky:01_private_players/01_dygo/router/mystic_form
# ---Mystic Impact---