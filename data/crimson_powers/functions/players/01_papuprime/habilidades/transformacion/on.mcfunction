# === Transformación (Switch ON) ===

## Step 1: Modificadores (Velocidad y Absorción)
attribute @s minecraft:generic.movement_speed modifier add 22222222-1111-1111-1111-111111111111 "Papuprime Transform Speed" 0.40 multiply_base
effect give @s absorption infinite 4 true

## Step 2: Feedback visual y estado
tag @s add TransformPapuprime
scoreboard players set @s p_transform 1
function crimson_powers:visuals/02_papuprime/transform_on
