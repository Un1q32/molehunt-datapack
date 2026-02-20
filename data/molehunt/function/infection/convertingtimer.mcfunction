execute as @a[tag=Converting] run scoreboard players add @s infectionCount 1

execute as @a[scores={infectionCount=500..}] run tag @s remove Converting
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:movement_speed base reset
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:jump_strength base reset
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:block_interaction_range base reset
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:entity_interaction_range base reset
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:water_movement_efficiency base reset
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:knockback_resistance base reset
execute as @a[scores={infectionCount=500..}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ .9

execute as @a[scores={infectionCount=500..}] run scoreboard players reset @s infectionCount
