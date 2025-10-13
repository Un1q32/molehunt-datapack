tag @s add converting
execute at @s run playsound minecraft:entity.zombie_villager.cure master @s
execute as @a[tag=mole] run tellraw @a[tag=converting] [{selector:"@s",color:"red"},{text:" is a mole."}]
tellraw @a[tag=mole] [{selector:"@s",color:"red"},{text:" is now a mole."}]
tag @s add mole
tag @s remove inno

attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:block_interaction_range base set 0
attribute @s minecraft:entity_interaction_range base set 0
attribute @s minecraft:water_movement_efficiency base set 1
attribute @s minecraft:knockback_resistance base set 1
effect give @s minecraft:resistance 25 4
effect give @s minecraft:water_breathing 25
