# UI Actionbars para Jharel

# Si Sigilo inactivo y Nuke en CD
execute if score @s p_sigilo matches 0 if score @s p_nuke_cd matches 1.. run title @s actionbar [{"text":"🥷 Sigilo: ","color":"gray"},{"text":"INACTIVO","color":"red"},{"text":" | 💥 Nuke: ","color":"gray"},{"score":{"name":"*","objective":"p_nuke_cd"},"color":"red"},{"text":" ticks","color":"dark_gray"}]

# Si Sigilo inactivo y Nuke Listo
execute if score @s p_sigilo matches 0 if score @s p_nuke_cd matches ..0 run title @s actionbar [{"text":"🥷 Sigilo: ","color":"gray"},{"text":"INACTIVO","color":"red"},{"text":" | 💥 Nuke: ","color":"gray"},{"text":"LISTA","color":"green","bold":true}]

# Si Sigilo Activo y Nuke en CD
execute if score @s p_sigilo matches 1 if score @s p_nuke_cd matches 1.. run title @s actionbar [{"text":"🥷 Sigilo: ","color":"dark_green"},{"text":"ACTIVO","color":"green","bold":true},{"text":" | 💥 Nuke: ","color":"gray"},{"score":{"name":"*","objective":"p_nuke_cd"},"color":"red"},{"text":" ticks","color":"dark_gray"}]

# Si Sigilo Activo y Nuke Listo
execute if score @s p_sigilo matches 1 if score @s p_nuke_cd matches ..0 run title @s actionbar [{"text":"🥷 Sigilo: ","color":"dark_green"},{"text":"ACTIVO","color":"green","bold":true},{"text":" | 💥 Nuke: ","color":"gray"},{"text":"LISTA","color":"green","bold":true}]
