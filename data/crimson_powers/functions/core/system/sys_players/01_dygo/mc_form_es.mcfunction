execute if score @s mc_form matches 0 run title @s actionbar [{"text":"Mystic Form: ","color":"gray"},{"text":"INACTIVO","color":"red"}]
execute if score @s mc_form matches 1 run title @s actionbar [{"text":"Mystic Form: ","color":"white"},{"text":"ACTIVO","color":"aqua","bold":true}]
