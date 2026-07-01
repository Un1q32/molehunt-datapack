tag @s add Converting
execute at @a run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ .5
execute as @s run tellraw @a[tag=Mole] [{selector:"@s",color:"red"},{text:" has converted to a Mole"}]
tellraw @s {"text":"You are now a Mole...","bold":true,"color":"red"}
tellraw @s ["",{"text":"Moles: "},{"selector":"@a[tag=Mole]","color":"red"}]
tag @s add Mole
team join Mole
tag @s remove Survivor

attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:block_interaction_range base set 0
attribute @s minecraft:entity_interaction_range base set 0
attribute @s minecraft:water_movement_efficiency base set 1
attribute @s minecraft:knockback_resistance base set 1
