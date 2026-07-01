# execute as the player that wants to be revived

tag @s remove Dead
tag @s add Survivor
team join Survivor @s
tag @s remove Mole
scoreboard players reset @s Deaths
gamemode survival @s
give @s minecraft:cooked_beef 64
