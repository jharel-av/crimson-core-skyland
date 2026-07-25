# Loop Principal de Papuprime (T-139)

# 1. Reducir Cooldown de Energon Sword
execute if score @s p_energon_cd matches 1.. run scoreboard players remove @s p_energon_cd 1

# 2. UI y Actionbar (Si tiene el Core en la mano)
execute as @s[nbt={SelectedItem:{tag:{d_papu:1b}}}] run function crimson_powers:core/system/sys_players/02_papuprime/ui
