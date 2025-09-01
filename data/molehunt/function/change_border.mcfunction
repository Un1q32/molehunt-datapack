scoreboard players operation width Border += @s Border
execute if score width Border matches 0 run tellraw @s {"text":"<ERROR> Border width could not be changed","color":"red"}
execute if score width Border matches 3100 run tellraw @s {"text":"<ERROR> Border width could not be changed","color":"red"}
execute if score width Border matches 0 run scoreboard players set width Border 100
execute if score width Border matches 3100 run scoreboard players set width Border 3000
scoreboard players set @s Border 0
scoreboard players set @s BorderSettingsDisplay 1
