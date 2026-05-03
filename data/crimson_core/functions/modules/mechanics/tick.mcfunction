# ===================================
# SKYLAND ENGINE - MECHANICS - MASTER TICK
# Ejecuta todos los modulos de Mecanicas del Sistema.
# ===================================
# Funciones/Modulos:
## escudos_avanzados by xLejks
function crimson_core:modules/mechanics/escudos/esc_lv1
## totem_vacio by xLejks- Deteción
function crimson_core:modules/mechanics/void_totem/deteccion

## checkpoints 
# Ejecutar sistema de checkpoints normales (marcadores).
function crimson_core:checkpoints/normal_ckpt/normal_tick

# Ejecutar sistema de anticaídas general.
function crimson_core:modules/mechanics/checkpoints/first_area/ac_tick

# Ejecutar sistema de checkpoints totémicos.
function crimson_core:checkpoints/totem_ckpt/totem_tick
