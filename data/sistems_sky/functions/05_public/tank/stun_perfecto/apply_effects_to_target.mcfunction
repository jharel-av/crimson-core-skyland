# Este archivo se ejecuta desde la perspectiva de cada enemigo afectado (@s).

# 1. Marcar al objetivo como afectado para no volver a aplicarle el efecto principal y reducción de vida.
tag @s add stun_afectado
tag @s add stun_health_reduced

# 2. Aplicar Inmovilización por 5 segundos (100 ticks).
attribute @s minecraft:generic.movement_speed modifier add a1b7a8d7-9b7c-4d5e-8b01-b9a3e8e14a1a "Stun Immobilize" -1 multiply
scoreboard players set @s stun_duration 100

# 3. Aplicar Reducción de Vida Máxima por 20 segundos (400 ticks). (0.30 de reducción, es decir, 30% de la vida actual del mob)
attribute @s minecraft:generic.max_health modifier add c3d9ca0f-7b5c-2b3e-6a81-d7e6f5d4c3c2 "StunHealth" -0.30 multiply
scoreboard players set @s health_reduction_duration 400
damage @s 3 minecraft:magic