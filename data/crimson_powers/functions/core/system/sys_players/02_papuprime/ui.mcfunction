# UI Actionbars para Papuprime

# Si Transformación está inactiva y Energon en CD
execute if score @s p_transform matches 0 if score @s p_energon_cd matches 1.. run title @s actionbar [{"text":"Modo Prime: ","color":"gray"},{"text":"INACTIVO","color":"red"},{"text":" | 🗡️ Energon: ","color":"gray"},{"score":{"name":"*","objective":"p_energon_cd"},"color":"red"},{"text":" ticks","color":"dark_gray"}]

# Si Transformación está inactiva y Energon Listo
execute if score @s p_transform matches 0 if score @s p_energon_cd matches ..0 run title @s actionbar [{"text":"Modo Prime: ","color":"gray"},{"text":"INACTIVO","color":"red"},{"text":" | 🗡️ Energon: ","color":"gray"},{"text":"LISTO","color":"green","bold":true}]

# Si Transformación está Activa y Energon en CD
execute if score @s p_transform matches 1 if score @s p_energon_cd matches 1.. run title @s actionbar [{"text":"Modo Prime: ","color":"yellow"},{"text":"ACTIVO","color":"gold","bold":true},{"text":" | 🗡️ Energon: ","color":"gray"},{"score":{"name":"*","objective":"p_energon_cd"},"color":"red"},{"text":" ticks","color":"dark_gray"}]

# Si Transformación está Activa y Energon Listo
execute if score @s p_transform matches 1 if score @s p_energon_cd matches ..0 run title @s actionbar [{"text":"Modo Prime: ","color":"yellow"},{"text":"ACTIVO","color":"gold","bold":true},{"text":" | 🗡️ Energon: ","color":"gray"},{"text":"LISTO","color":"green","bold":true}]
