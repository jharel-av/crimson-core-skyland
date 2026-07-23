# Detecta clics con Hongo en un palo

# Reseteamos el score para no generar spam
scoreboard players set @s clic_fu 0

# Si tiene en la mano el ítem del menú de Skyland (CustomModelData 1001 y tag skyland_menu)
execute if predicate crimson_powers:holding_fungus_menu run function crimson_powers:core/system/kits/open_menu
