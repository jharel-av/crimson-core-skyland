# --- Lógica del Aura de PapuCat ---

# 1. Llamamos al Grupo de funciones Verificador
execute at @a[tag=PapuCat] run function sistems_sky:03_pasivas/01_playmakers/02_xlejks/grp_detec

# 2. A TODOS los que tienen el buff (estén cerca o lejos), les sumamos 1 al contador.
# Los que están cerca volverán a 1, los que se alejaron seguirán contando.
scoreboard players add @a[tag=has_cat_buff] cat_aura_timer 1

# 3. A los jugadores cuyo contador ha llegado a 3 minutos (3600), les quitamos el buff.
execute as @a[scores={cat_aura_timer=3600..}] run function sistems_sky:03_pasivas/01_playmakers/02_xlejks/remove_buff
