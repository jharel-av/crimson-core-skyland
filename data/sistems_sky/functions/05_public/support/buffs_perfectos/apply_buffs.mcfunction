# APPLY_BUFFS: Aplica todos los modificadores de atributos y efectos de la Ultimate.
# Iniciar duración de la habilidad (29 segundos * 20 ticks = 4z80)
scoreboard players add @s ultimate_duration 460

# --- BUFFS DE ATRIBUTOS ---
# UUIDs: fb2a9512-7023-4c59-a5e2-1a48231c512c a 5131

# +10 Vida Máxima (5 corazones)
attribute @s minecraft:generic.max_health modifier add fb2a9512-7023-4c59-a5e2-1a48231c512c "BuffVidaUltimate" 10 add
# +45% Velocidad Base
attribute @s minecraft:generic.movement_speed modifier add fb2a9512-7023-4c59-a5e2-1a48231c512d "BuffVelocidadUltimate" 0.45 multiply_base
# +8 Daño (4 corazones)
attribute @s minecraft:generic.attack_damage modifier add fb2a9512-7023-4c59-a5e2-1a48231c512e "BuffDañoUltimate" 8 add
# +6 Puntos de Armadura
attribute @s minecraft:generic.armor modifier add fb2a9512-7023-4c59-a5e2-1a48231c512f "BuffArmaduraUltimate" 6 add
# +30% Velocidad de Ataque
attribute @s minecraft:generic.attack_speed modifier add fb2a9512-7023-4c59-a5e2-1a48231c5130 "BuffASUltimate" 0.30 multiply_base

# Curar al jugador para que reciba los corazones nuevos
effect give @s minecraft:instant_health 1 5 true
