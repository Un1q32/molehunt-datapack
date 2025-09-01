scoreboard players operation 1in MoleFrequency += @s MoleFrequency
execute if score 1in MoleFrequency matches 1 run tellraw @s {"text":"<ERROR> Mole frequency could not be changed","color":"red"}
execute if score 1in MoleFrequency matches 1 run scoreboard players set 1in MoleFrequency 2
scoreboard players set @s MoleFrequency 0
scoreboard players set @s MoleSettingsDisplay 1