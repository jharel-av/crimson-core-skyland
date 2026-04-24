# Función principal llamada por el detector.
# Decide si la habilidad se puede usar o está en cooldown.

# Mata el item en el suelo para que no se pueda recoger.
# Se asume que esta función es ejecutada por el jugador correcto, cerca del item. (logica antigua)
# kill @e[type=item,nbt={Item:{tag:{atk_bff:1b}}},distance=..4,limit=1,sort=nearest]

## aqui necesito un salvaguarda del scoreboard, en caso de que el jugador no tenga el marcador, para evitar errores.
scoreboard players add @s buff_cd 0

# Comprueba si la habilidad está disponible para el jugador que ejecuta la función.
execute if score @s buff_cd matches 1.. run function sistems_sky:05_public/attack/buff_normal/on_cooldown
execute if score @s buff_cd matches 0 run function sistems_sky:05_public/attack/buff_normal/use
