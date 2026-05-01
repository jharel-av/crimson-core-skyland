# --- Desactiva el Aura Protectora ---

# 1. Remueve el tag de control del tanque y resetea contadores.
tag @s remove aura_tank
scoreboard players set @s tap_g 0
scoreboard players set @s tap_cd 0

# 2. Remueve el buff de armadura del tanque.
attribute @s minecraft:generic.armor modifier remove 7b5a8a65-29b0-4690-aa9b-57788327092a

# 3. Remueve el buff de armadura de todos los jugadores que pudieran haberlo recibido.
# Es más seguro ejecutarlo en todos que intentar rastrear quién lo recibió. El UUID se encarga de que solo se borre el modificador correcto.
attribute @s minecraft:generic.armor modifier remove f8a1a4c4-72b8-406a-9e1b-31627f1a6c4d
