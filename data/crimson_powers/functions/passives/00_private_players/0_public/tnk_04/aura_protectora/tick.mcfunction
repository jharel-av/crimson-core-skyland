# ======== SISTEMA DE AURA PROTECTORA (TANQUE) ========

# 1. A los jugadores que YA tienen el buff y siguen cerca del tanque, les reiniciamos el contador a 0 para que no se les acabe y Aplicamos a los que no lo tienen.
execute if predicate crimson_powers:sneak run function crimson_powers:passives/00_private_players/0_public/tnk_04/aura_protectora/g1_tap

# 2. A los jugadores cuyo contador de cooldown ha llegado a 15 segundos (300), les aplicamos el efecto periódico (resistencia + regeneración) y reseteamos el contador de cooldown para que vuelva a empezar.
execute as @a[tag=aura_tank,tag=!ene] if score @s tap_cd matches 300.. run function crimson_powers:passives/00_private_players/0_public/tnk_04/aura_protectora/apply_periodic_buff

# 3. A los jugadores cuyo contador ha llegado a 15 segundos (300), les quitamos el buff.
execute as @a[scores={tap_g=300..},tag=!ene] run function crimson_powers:passives/00_private_players/0_public/tnk_04/aura_protectora/off
