# --- Aplica el buff de vida de PapuCat ---

# UUID único para poder identificar y quitar este modificador específico después.
attribute @s minecraft:generic.max_health modifier add f81d4fae-7dec-11d0-a765-00a0c91e6bf6 "papucat_health_buff" 8.0 add

# Añadimos una etiqueta para identificar fácilmente quién tiene el buff.
tag @s add has_cat_buff

# Reiniciamos su contador por si acaso.
scoreboard players set @s cat_aura_timer 0

# Mensaje visual para el jugador que recibe el buff.
title @s actionbar {"text":"¡Sientes el poder de un gato!","color":"gold"}
