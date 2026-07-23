# warn-off-file nbt-items-use-if-items
# Habilidades de la clase especial (o general) de Tanque (tanque)

# Stun perfecto "StunPerfecto"
execute if entity @s[nbt={SelectedItem:{tag:{StunPerfecto:1b}}},distance=0..] run function crimson_powers:abilities/tank/stun_perfecto/trigger_rail
