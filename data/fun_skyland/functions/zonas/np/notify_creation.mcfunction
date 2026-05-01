# Notifica a los admins sobre la nueva zona

# 1. Mensaje en chat
tellraw @a[tag=admin] ["",{"text":"[Skyland] ","color":"gold"},{"text":"⚠ Nueva Zona NP detectada y activada.","color":"yellow"}]

# 2. Sonido de confirmación (opcional)
playsound minecraft:block.note_block.pling master @a[tag=admin] ~ ~ ~ 1 2

# 3. Marcar como notificada para que no repita el mensaje
tag @s add sl.zone.notified