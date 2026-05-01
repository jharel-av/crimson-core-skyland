# ===================================
# SKYLAND ENGINE - NORMAL CHECKPOINTS - RESCUE PLAYER
# ===================================

# Si el jugador tiene un checkpoint guardado (acp_id >= 1), ejecutar el rescate.
execute if score @s acp_id matches 1.. run tag @s add normal_is_rescuing
    # Ejecutar el teletransporte.
function fun_skyland:checkpoints/normal_ckpt/teleport_to_checkpoint
