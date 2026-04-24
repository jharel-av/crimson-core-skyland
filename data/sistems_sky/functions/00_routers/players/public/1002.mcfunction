# warn-off-file nbt-items-use-if-items
# Habilidades de la clase especial (o general) de Movilidad (mov)

# Impulso Subito "mov_dash"
execute if entity @s[nbt={SelectedItem:{tag:{mov_dash:1b}}},distance=0..] run function sistems_sky:05_public/movility/impulso_subito/trigger
# Salto Ascendente "mov_leap"
execute if entity @s[nbt={SelectedItem:{tag:{mov_leap:1b}}},distance=0..] run function sistems_sky:05_public/movility/salto_ascendente/trigger