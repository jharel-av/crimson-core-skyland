# --- DEBUFFS Y EFECTOS ---

# -55% de Velocidad (se acumula con el buff, resultando en -10%)
attribute @s minecraft:generic.movement_speed modifier add fb2a9512-7023-4c59-a5e2-1a48231c5131 "Debuff Velocidad Ultimate" -0.70 multiply

# Resistencia 3 por 16 segundos
effect give @s minecraft:resistance 16 2 true

# Curar al jugador para que reciba los corazones nuevos
effect give @s minecraft:instant_health 1 5 true