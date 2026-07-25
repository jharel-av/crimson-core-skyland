# === Energon Sword (Remover atributos post-duración) ===

execute as @a[tag=EnergonActive] run attribute @s minecraft:generic.attack_damage modifier remove 22222222-1111-1111-2222-111111111111
execute as @a[tag=EnergonActive] run attribute @s minecraft:generic.armor modifier remove 22222222-1111-1111-3333-111111111111
execute as @a[tag=EnergonActive] run tag @s remove EnergonActive

# Sonido de apagado
execute as @a[tag=t139] at @s run playsound minecraft:block.fire.extinguish master @a[distance=..10] ~ ~ ~ 1 1 1
