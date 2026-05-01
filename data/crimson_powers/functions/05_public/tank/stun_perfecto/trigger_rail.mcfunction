# ========- RAIL DE DETECCIÓN PARA STUN PERFECTO -========
# Esta función se ejecuta cuando el jugador con tag 'tanque' detecta el item de Stun Perfecto cerca de él.
# Separa la lógica de detección del trigger principal para evitar conflictos en multiplayer.

# Detecta el Score cd_aura del jugador para determinar si la habilidad está en enfriamiento o lista para usar.
# ---- On Cooldown ----
execute if score @s stun_perfecto_cd matches 1.. run function crimson_powers:05_public/tank/stun_perfecto/on_cooldown
# ---- Ready to Use ----
execute if score @s stun_perfecto_cd matches ..0 run function crimson_powers:05_public/tank/stun_perfecto/trigger
## --- Kill Item ---
# Elimina el item del suelo si fue detectado por un jugador 'sup', para que no sea procesado de nuevo.
#kill @e[distance=0..,nbt={Item:{tag:{StunPerfecto:1b}}},limit=1,sort=nearest,type=item]

