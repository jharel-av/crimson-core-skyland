# --- Quita el buff de vida de PapuCat ---

# Usamos el mismo UUID para quitar el modificador exacto que pusimos antes.
attribute @s minecraft:generic.max_health modifier remove f81d4fae-7dec-11d0-a765-00a0c91e6bf6

# Quitamos la etiqueta de control.
tag @s remove has_cat_buff

# Reseteamos el score del jugador.
scoreboard players reset @s cat_aura_timer

# Mensaje visual para el jugador que pierde el buff.
title @s actionbar {"text":"El poder del gato se desvanece...","color":"gray"}
