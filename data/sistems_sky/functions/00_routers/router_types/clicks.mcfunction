# 1. Ruta para Dygo
execute if entity @s[tag=dygo] at @s run function sistems_sky:00_routers/players/private/00_dygo

# 2. Ruta para Jharel
execute if entity @s[tag=jharel] at @s run function sistems_sky:00_routers/players/private/07_jharel

# 3. Ruta para Aiko
execute if entity @s[tag=aiko] at @s run function sistems_sky:00_routers/players/private/01_aiko

# 4. Ruta para Antonio
execute if entity @s[tag=antonio] at @s run function sistems_sky:00_routers/players/private/02_antonio

# 5. Ruta para Myum
execute if entity @s[tag=myum] at @s run function sistems_sky:00_routers/players/private/20_myu

# ==========================================
# Rutas para las clases especiales (o generales)
# ==========================================
execute if entity @s[tag=atk] at @s run function sistems_sky:00_routers/players/public/1001
execute if entity @s[tag=mov] at @s run function sistems_sky:00_routers/players/public/1002
execute if entity @s[tag=sup] at @s run function sistems_sky:00_routers/players/public/1003
execute if entity @s[tag=tanque] at @s run function sistems_sky:00_routers/players/public/1004

# ==========================================
# REINICIO DE PUNTAJE (Obligatorio)
# ==========================================
# Reseteamos el clic a 0 para que no se ejecute un millón de veces por segundo
scoreboard players set @s clic_za 0