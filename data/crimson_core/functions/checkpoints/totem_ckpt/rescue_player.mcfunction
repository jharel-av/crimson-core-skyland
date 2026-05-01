# ===================================
# SKYLAND ENGINE - TOTEMIC CHECKPOINTS - RESCUE PLAYER
# ===================================

# Si el jugador tiene un checkpoint totémico guardado (acpt_id >= 1), ejecutar el rescate.
execute if score @s acpt_id matches 1.. run tag @s add totem_is_rescuing
function crimson_core:checkpoints/totem_ckpt/teleport_to_checkpoint

# Si no tiene checkpoint, no se hace nada. Se deja que el anticaídas general de -50 actúe.
