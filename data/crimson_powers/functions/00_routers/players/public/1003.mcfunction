# warn-off-file nbt-items-use-if-items
# Habilidades de la clase especial (o general) de Soporte (sup)

# Aura de Sanación "sup_aura"
execute if entity @s[nbt={SelectedItem:{tag:{sup_aura:1b}}},distance=0..] run function crimson_powers:05_public/support/aura_sanacion/trigger_rail
# Ultimate de soporte "sup_ultimate"
execute if entity @s[nbt={SelectedItem:{tag:{sup_ultimate:1b}}},distance=0..] run function crimson_powers:05_public/support/buffs_perfectos/trigger_rail