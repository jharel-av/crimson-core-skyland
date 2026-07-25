# === Energon Sword (Uso) ===

# Validar que no esté en cooldown ni ya activa
execute if score @s p_energon_cd matches 1.. run return 0
execute if entity @s[tag=EnergonActive] run return 0

# Step 1: Dar Atributos (Daño +3, Armadura +4 simulando Resistencia)
attribute @s minecraft:generic.attack_damage modifier add 22222222-1111-1111-2222-111111111111 "Energon Sword Damage" 3 add
attribute @s minecraft:generic.armor modifier add 22222222-1111-1111-3333-111111111111 "Energon Sword Armor" 4 add

# Step 2: Estado y UI
tag @s add EnergonActive
function crimson_powers:visuals/02_papuprime/energon_sword_on

# Step 3: Programar el fin de la duración (20s) y el Cooldown (360s = 7200 ticks)
schedule function crimson_powers:players/01_papuprime/habilidades/energon_sword/remove 20s
scoreboard players set @s p_energon_cd 7200
