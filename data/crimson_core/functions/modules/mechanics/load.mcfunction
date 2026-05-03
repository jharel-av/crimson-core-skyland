# ===================================
# SKYLAND ENGINE - MECHANICS - MASTER LOAD
# Carga todos los modulos/cores.
# ===================================
# Load totem del Vacio
function crimson_core:modules/mechanics/void_totem/load

## checkpoints
# Cargar sistema de checkpoints normales (marcadores).
function crimson_core:checkpoints/normal_ckpt/normal_load

# Cargar sistema de anticaídas general.
function crimson_core:checkpoints/anticaidas/ac_load

# Cargar sistema de checkpoints totémicos.
function crimson_core:checkpoints/totem_ckpt/totem_load


# ----- Debug: Sistemas cargados -----
tellraw @a[tag=admin] [{"text":"[Skyland Engine:]","color":"gold"},{"text":" Sistema de Mecanicas Cargados Correctamente.","color":"yellow"}]