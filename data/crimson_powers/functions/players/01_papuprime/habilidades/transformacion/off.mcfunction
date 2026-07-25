# === Transformación (Switch OFF) ===

## Step 1: Quitar modificadores
attribute @s minecraft:generic.movement_speed modifier remove 22222222-1111-1111-1111-111111111111
effect clear @s absorption

## Step 2: Feedback visual y estado
tag @s remove TransformPapuprime
scoreboard players set @s p_transform 0
function crimson_powers:visuals/02_papuprime/transform_off
