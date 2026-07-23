# ==========================================
# CHANGE LEVEL - Este archivo se encarga de manejar el cambio de nivel de la habilidad Mystic Dash.
# Cada vez que el jugador cambia de nivel, se limpian los efectos del nivel anterior y se aplican los efectos del nuevo nivel, esto para evitar que se acumulen los efectos de la habilidad y se mantenga el equilibrio del juego.
# ==========================================

# 1. Matemáticas (Avanzar de nivel y reiniciar si pasa de 2)
scoreboard players add @s dash_est 1
execute if score @s dash_est matches 3.. run scoreboard players set @s dash_est 0

# 2. Si la habilidad está ACTIVA, hacemos la transición suave
execute if score @s mc_dash matches 1 run function crimson_powers:players/00_mystics/mystic/mystic_dash/updater

# Sonidito Chido
# Efecto de Partículas y Sonido al Cambiar de Nivel la Habilidad
playsound ui.button.click master @s ~ ~ ~ 1 2
