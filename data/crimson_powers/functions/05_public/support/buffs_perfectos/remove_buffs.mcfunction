# REMOVE_BUFFS: Elimina todos los modificadores de atributos de la Ultimate.

# --- ELIMINAR MODIFICADORES POR UUID ---
attribute @s minecraft:generic.max_health modifier remove fb2a9512-7023-4c59-a5e2-1a48231c512c
attribute @s minecraft:generic.movement_speed modifier remove fb2a9512-7023-4c59-a5e2-1a48231c512d
attribute @s minecraft:generic.attack_damage modifier remove fb2a9512-7023-4c59-a5e2-1a48231c512e
attribute @s minecraft:generic.armor modifier remove fb2a9512-7023-4c59-a5e2-1a48231c512f
attribute @s minecraft:generic.attack_speed modifier remove fb2a9512-7023-4c59-a5e2-1a48231c5130
attribute @s minecraft:generic.movement_speed modifier remove fb2a9512-7023-4c59-a5e2-1a48231c5131

# --- FEEDBACK Y SONIDO ---
title @s actionbar {"text":"Tus poderes vuelven a la normalidad.","color":"red"}
playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.5 1.8


