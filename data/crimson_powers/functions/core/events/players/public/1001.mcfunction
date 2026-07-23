# warn-off-file nbt-items-use-if-items
# Habilidades de la clase especial (o general) de Ataque (atk)

# Buff Normal: Aumenta el daño de ataque durante un corto periodo de tiempo.
execute if entity @s[nbt={SelectedItem:{tag:{atk_bff:1b}}},distance=0..] run function crimson_powers:abilities/attack/buff_normal/trigger