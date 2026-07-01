# execute as the mole that wants to be revived

tag @s remove Dead
tag @s remove Survivor
tag @s add Mole
team join Mole @s
scoreboard players reset @s Deaths
gamemode survival @s
give @s minecraft:cooked_beef 64

execute if score mode Molehunt matches 3 run scoreboard players set @s Deaths 1
