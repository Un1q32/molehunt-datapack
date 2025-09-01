execute if score @s HourSettings matches 1 run scoreboard players add hours Timer 1

execute if score @s HourSettings matches -1 if score hours Timer matches 0 run tellraw @s {"text":"<ERROR> Time could not be changed","color":"red"}
execute if score @s HourSettings matches -1 if score hours Timer matches 1 if score minutes Timer matches 0 run tellraw @s {"text":"<ERROR> Time could not be changed","color":"red"}
execute if score @s HourSettings matches -1 if score hours Timer matches 2.. run scoreboard players remove hours Timer 1
execute if score @s HourSettings matches -1 if score hours Timer matches 1 unless score minutes Timer matches 0 run scoreboard players remove hours Timer 1

execute if score @s MinuteSettings matches 1 run scoreboard players add minutes Timer 1

execute if score @s MinuteSettings matches 5 run scoreboard players add minutes Timer 5

execute if score @s MinuteSettings matches 15 run scoreboard players add minutes Timer 15

execute if score @s MinuteSettings matches -1 if score minutes Timer matches 0..1 if score hours Timer matches 0 run tellraw @s {"text":"<ERROR> Time could not be changed","color":"red"}
execute if score @s MinuteSettings matches -1 if score minutes Timer matches 0 if score hours Timer matches 1.. run scoreboard players remove minutes Timer 1
execute if score @s MinuteSettings matches -1 if score minutes Timer matches 2..59 if score hours Timer matches 0 run scoreboard players remove minutes Timer 1
execute if score @s MinuteSettings matches -1 if score minutes Timer matches 1..59 unless score hours Timer matches 0 run scoreboard players remove minutes Timer 1

execute if score @s MinuteSettings matches -5 if score minutes Timer matches 0..5 if score hours Timer matches 0 run tellraw @s {"text":"<ERROR> Time could not be changed","color":"red"}
execute if score @s MinuteSettings matches -5 if score minutes Timer matches 0..4 if score hours Timer matches 1.. run scoreboard players remove minutes Timer 5
execute if score @s MinuteSettings matches -5 if score minutes Timer matches 6..59 if score hours Timer matches 0 run scoreboard players remove minutes Timer 5
execute if score @s MinuteSettings matches -5 if score minutes Timer matches 5..59 unless score hours Timer matches 0 run scoreboard players remove minutes Timer 5

execute if score @s MinuteSettings matches -15 if score minutes Timer matches 0..15 if score hours Timer matches 0 run tellraw @s {"text":"<ERROR> Time could not be changed","color":"red"}
execute if score @s MinuteSettings matches -15 if score minutes Timer matches 0..14 if score hours Timer matches 1.. run scoreboard players remove minutes Timer 15
execute if score @s MinuteSettings matches -15 if score minutes Timer matches 16..59 if score hours Timer matches 0 run scoreboard players remove minutes Timer 15
execute if score @s MinuteSettings matches -15 if score minutes Timer matches 15..59 unless score hours Timer matches 0 run scoreboard players remove minutes Timer 15

execute if score minutes Timer matches 60.. run scoreboard players add hours Timer 1
execute if score minutes Timer matches 60.. run scoreboard players remove minutes Timer 60

execute if score minutes Timer matches ..-1 run scoreboard players remove hours Timer 1
execute if score minutes Timer matches ..-1 run scoreboard players add minutes Timer 60

execute if score hours Timer matches 10.. run scoreboard players reset hours2 Timer
execute if score minutes Timer matches 10.. run scoreboard players reset minutes2 Timer
execute if score seconds Timer matches 10.. run scoreboard players reset seconds2 Timer
execute unless score hours Timer matches 10.. run scoreboard players set hours2 Timer 0
execute unless score minutes Timer matches 10.. run scoreboard players set minutes2 Timer 0
execute unless score seconds Timer matches 10.. run scoreboard players set seconds2 Timer 0

scoreboard players set @s HourSettings 0
scoreboard players set @s MinuteSettings 0

scoreboard players set @s TimeSettingsDisplay 1