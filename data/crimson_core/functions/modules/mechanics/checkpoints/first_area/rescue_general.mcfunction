# ===================================
# CRIMSON CORE - GENERAL ANTI-FALL - RESCUE
# ===================================

# Teletransportar al jugador al observatorio (coordenadas de fallback).
tp @s 5 214 -334

# Efecto para cancelar el momentum de la caída.
effect give @s resistance 2 4 true

# Mensaje de Lore.
tellraw @s {"text":"[Crimson Core]: Por Alguna razón, volviste al Observatorio.","color":"gray"}

# Efecto de sonido.
playsound minecraft:entity.enderman.teleport player @s
