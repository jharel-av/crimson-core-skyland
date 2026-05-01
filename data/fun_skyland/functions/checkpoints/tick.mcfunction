# ===================================
# SKYLAND ENGINE - CHECKPOINTS - MASTER TICK
# Ejecuta todos los sub-módulos de checkpoints cada tick.
# ===================================

# Ejecutar sistema de checkpoints normales (marcadores).
function fun_skyland:checkpoints/normal_ckpt/normal_tick

# Ejecutar sistema de anticaídas general.
function fun_skyland:checkpoints/anticaidas/ac_tick

# Ejecutar sistema de checkpoints totémicos.
function fun_skyland:checkpoints/totem_ckpt/totem_tick
