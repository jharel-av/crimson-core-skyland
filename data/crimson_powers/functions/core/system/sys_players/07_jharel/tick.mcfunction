# Loop Principal de Jharel

# 1. Pasiva
function crimson_powers:players/07_jharel/pasivas/bendicion

# 2. Reducir Cooldown de Nuke
execute if score @s p_nuke_cd matches 1.. run scoreboard players remove @s p_nuke_cd 1

# 3. UI y Actionbar (Si tiene el Ojo en la mano)
execute as @s[nbt={SelectedItem:{tag:{d_jharel:1b}}}] run function crimson_powers:core/system/sys_players/07_jharel/ui
