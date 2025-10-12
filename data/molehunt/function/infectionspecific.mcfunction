execute as @a[tag=converting] run scoreboard players add @s infectionCount 1

execute as @a[scores={infectionCount=500..}] run tag @s remove converting
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:movement_speed base reset
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:jump_strength base reset
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:block_interaction_range base reset
execute as @a[scores={infectionCount=500..}] run attribute @s minecraft:entity_interaction_range base reset

execute as @a[scores={infectionCount=500..}] run scoreboard players reset @s infectionCount
