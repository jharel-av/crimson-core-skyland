# ========- RAIL DE DETECCIÓN PARA AURA DE SANACIÓN -========
# Esta función se ejecuta cuando el jugador con tag 'sup' detecta el item de aura de sanación cerca de él.
# Separa la lógica de detección del trigger principal para evitar conflictos en multiplayer.

# Detecta el Score cd_aura del jugador para determinar si la habilidad está en enfriamiento o lista para usar.
# ---- On Cooldown ----
execute if score @s cd_ultimate matches 1.. run function crimson_powers:abilities/support/buffs_perfectos/on_cooldown
# ---- Ready to Use ----
execute if score @s cd_ultimate matches ..0 run function crimson_powers:abilities/support/buffs_perfectos/trigger
## --- Kill Item ---
# Elimina el item del suelo si fue detectado por un jugador 'sup', para que no sea procesado de nuevo.
# kill @e[distance=0..,nbt={Item:{tag:{sup_ultimate:1b}}},limit=1,sort=nearest,type=item]

