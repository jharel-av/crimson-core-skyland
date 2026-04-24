# TRIGGER v2: Inicia la habilidad Ultimate con sistema de duración y verificación.



# Feedback para el jugador
title @s title {"text":"¡BUFFS PERFECTOS!","color":"gold"}
tellraw @a {"text":"¡","color":"gray", "extra":[{"selector":"@s"}, {"text":" ha desatado su poder de soporte!","color":"gray"}]}
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 1.2


# Poner cooldown (35 s * 20 ticks = 700)
scoreboard players set @s cd_ultimate 700

# Ejecutar la aplicación de buffs
execute as @a[distance=..10,tag=!ene] at @s run function sistems_sky:05_public/support/buffs_perfectos/apply_buffs
execute at @s run function sistems_sky:05_public/support/buffs_perfectos/apply_debuffs


# Dar el ítem de bendición al jugador (para reutilizar tras el cooldown)
#give @s nether_star{display:{Name:'{"text":"Bendición del Guardián","color":"light_purple","italic":false}'},sup_ultimate:1b} 1
