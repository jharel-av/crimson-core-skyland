# === Explosión Sagrada (Uso) ===

# Validar cooldown (36000 ticks = 30 min)
execute if score @s p_nuke_cd matches 1.. run return 0

# Step 1: Efectos Visuales y Sonoros Centrales
execute at @s run playsound minecraft:entity.wither.spawn master @a[distance=..50] ~ ~ ~ 100 2 1
execute at @s run particle explosion_emitter ~ ~ ~ 1 1 1 0 5 force

# Step 2: Orbital Strike (Fireballs sobre enemigos)
execute at @s as @e[type=!player,distance=..50] at @s run summon fireball ~ ~10 ~ {Motion:[0.0,-2.0,0.0],ExplosionPower:9}
execute at @s as @e[type=!player,distance=..50] run effect give @s wither 30 1 false

# Step 3: Buff a aliados cercanos (Jugadores)
execute at @s run effect give @a[distance=..60] regeneration 60 1 false
execute at @s run effect give @a[distance=..60] strength 60 1 false
execute at @s run effect give @a[distance=..60] resistance 60 2 false

# Step 4: Iniciar Cooldown (36000 ticks)
scoreboard players set @s p_nuke_cd 36000
