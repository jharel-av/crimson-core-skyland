# === Sigilo (Switch OFF) ===

## Step 1: Quitar modificadores
attribute @s minecraft:generic.movement_speed modifier remove 22222222-1111-2222-1111-111111111111
attribute @s minecraft:generic.attack_damage modifier remove 22222222-1111-2222-2222-111111111111
effect clear @s invisibility

## Step 2: Estado y UI
tag @s remove SigiloJharel
scoreboard players set @s p_sigilo 0
function crimson_powers:visuals/07_jharel/sigilo_off
