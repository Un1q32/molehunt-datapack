# select moles (teams are used for teamchat)
scoreboard players reset @a Deaths

execute if score moles Molehunt matches 1.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 2.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 3.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 4.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 5.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 6.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 7.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 8.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 9.. run team join Mole @r[team=!Mole]
execute if score moles Molehunt matches 10.. run team join Mole @r[team=!Mole]

# Keep track of who's a mole even after leaving team
tag @a[team=Mole] add Mole

tag @a[team=!Mole] add Survivor

team join Survivor @a[team=!Mole]

# Locator bar
gamerule locator_bar true
execute as @a[tag=Mole] run attribute @s minecraft:waypoint_receive_range base reset
# 0 should work here but for some reason if it's set to 0 the moles don't have locator bar
execute as @a[tag=!Mole] run attribute @s minecraft:waypoint_receive_range base set 0.000001

execute as @a[tag=Mole] run waypoint modify @s color red
execute as @a[tag=!Mole] run waypoint modify @s color green

title @a[tag=Mole] title {"text":"The Mole.","color":"red","bold":true}
title @a[tag=!Mole] title {"text":"NOT The Mole.","color":"green","bold":true}
execute as @a[tag=Mole] run tellraw @a[tag=Mole] [{selector:"@s",color:"red"},{text:" is a mole."}]
execute as @a[tag=!Mole] run tellraw @s [{text:" You are a Survivor.","color":"green","bold":true}]

# Game offically started
scoreboard players set playing Molehunt 1

# Infection
execute if score mode Molehunt matches 3 run scoreboard players set @a[tag=Mole] Deaths 1
