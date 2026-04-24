# --- Activa el Aura Protectora ---

# 1. Marca el aura como activa en el tanque y resetea sus contadores.
tag @s add aura_tank

# 2. Aplica armadura a los jugadores aliados cercanos (+10).
# Se excluye a sí mismo (por tag) y a los enemigos (por tag).
attribute @s minecraft:generic.armor modifier add f8a1a4c4-72b8-406a-9e1b-31627f1a6c4d "Aura Aliada" 6 add
