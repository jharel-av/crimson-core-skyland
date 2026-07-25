# === Sigilo (Switch ON) ===

## Step 1: Modificadores
attribute @s minecraft:generic.movement_speed modifier add 22222222-1111-2222-1111-111111111111 "Jharel Sigilo Speed" 0.60 multiply_base
attribute @s minecraft:generic.attack_damage modifier add 22222222-1111-2222-2222-111111111111 "Jharel Sigilo Damage" 6 add
effect give @s invisibility infinite 0 true

## Step 2: Estado y UI
tag @s add SigiloJharel
scoreboard players set @s p_sigilo 1
function crimson_powers:visuals/07_jharel/sigilo_on
