
# --- Lógica del Aura de PapuCat ---
# 1. Reseteamos el contador de los que están cerca para que no se les acabe mientras siguen cerca.
scoreboard players set @a[distance=..5,tag=has_cat_buff] cat_aura_timer 0
# 2. A los jugadores que están cerca de PapuCat pero AÚN NO tienen el buff, se lo aplicamos.
execute as @a[distance=..5,tag=!has_cat_buff,tag=!PapuCat] run function crimson_powers:passives/01_playmakers/02_xlejks/apply_buff
