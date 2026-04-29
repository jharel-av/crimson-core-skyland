# Retirar el Logro para poder volver a obtenerlo al usar la habilidad.
advancement revoke @s only sistems_sky:sed_sangre

# Iniciador de la habilidad solo en caso de que el jugador aun no tenga configurado la tag
scoreboard players add @s[tag=atk] cd_vampiro 0

# Ejecutar la función de la habilidad solo si el jugador tiene el tag de la clase y el cooldown de la habilidad es 0 o menos.
execute at @s if entity @s[tag=atk] if score @s cd_vampiro matches ..0 run function sistems_sky:05_public/attack/robo_sangre/robo_sangre

