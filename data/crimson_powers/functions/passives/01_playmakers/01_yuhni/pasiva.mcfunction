# -- LÓGICA DE LA PASIVA --

# 1. Resetear el timer del PapuCuy para que vuelva a contar desde 0
scoreboard players set @s playmakers_timer 0

# 2. Dar Saturación a TODOS en radio de 5 bloques (incluido el Cuy)
# Saturation 0 dura 1 segundo instantáneo y llena la comida.
# "true" al final oculta las partículas (para que no moleste la visión).
effect give @a[distance=..5] minecraft:saturation 1 0 true

# O partículas de "Happy Villager" (verdes)
particle minecraft:composter ~ ~0.5 ~ 0.5 0.2 0.5 1 5 normal