# TRIGGER v2: Inicia la habilidad con sistema de duración y verificación.
# Feedback para el jugador
title @s actionbar {"text":"¡Aura de Sanación Activada!","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @s

# Poner cooldown (20 segundos * 20 ticks = 400)
scoreboard players set @s cd_aura 400

# Iniciar duración de la habilidad SOLO para el caster (5 segundos * 20 ticks = 100)
scoreboard players set @s aura_duration 100

# Añadir tag de control al caster
tag @s add aura_activa

# Ejecutar la curación por primera vez (pulso inicial) desde la posición del caster
function crimson_powers:05_public/support/aura_sanacion/on_aura_pulse
