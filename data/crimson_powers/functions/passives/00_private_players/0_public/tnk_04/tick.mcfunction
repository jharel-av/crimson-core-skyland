# ======== SISTEMA DE PASIVAS DE TANQUE ========

# Aplica las pasivas a los nuevos jugadores con el tag "tanque"
execute unless score @s kit_tnk matches 1 run function crimson_powers:passives/00_private_players/0_public/tnk_04/true

# Remueve las pasivas de los jugadores que ya no tengan el tag "tanque"
execute as @a[tag=tanque_passives_applied,tag=!tanque] run function crimson_powers:passives/00_private_players/0_public/tnk_04/false
# Aura Protectora:
function crimson_powers:passives/00_private_players/0_public/tnk_04/aura_protectora/tick