# ===================================
# CRIMSON CORE - TOTEMIC CHECKPOINTS - ADMIN - REMOVE
# ===================================

# Mata al marker más cercano que sea un punto de guardado totémico.
execute as @s run kill @e[type=marker,tag=punto_guardado_totem,distance=..2,limit=1,sort=nearest]

# Feedback para el admin
tellraw @s ["",{"text":"[Checkpoints Totémicos]","color":"red"},{"text":" ❌ Checkpoint más cercano eliminado.","color":"yellow"}]
