# ===================================
# SKYLAND ENGINE - CHECKPOINTS - MASTER TICK
# Ejecuta todos los sub-módulos de checkpoints cada tick.
# ===================================

# Ejecutar sistema de checkpoints normales (marcadores).
function crimson_core:checkpoints/normal_ckpt/normal_tick

# Ejecutar sistema de anticaídas general.
function crimson_core:checkpoints/anticaidas/ac_tick

# Ejecutar sistema de checkpoints totémicos.
function crimson_core:checkpoints/totem_ckpt/totem_tick
