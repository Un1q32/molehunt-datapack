# execute as the player that wants to be revived

tag @s remove Dead
team join Survivors @s
scoreboard players reset @s Deaths
gamemode survival @s
give @s minecraft:cooked_beef 64
