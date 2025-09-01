team add alive
team add spec

team modify alive nametagVisibility never
team modify spec color gray

scoreboard objectives add Deaths deathCount

scoreboard objectives add Alive dummy

team leave @a

team join alive @a

scoreboard objectives add Timer dummy
scoreboard players set ticks Timer 0
scoreboard players set seconds Timer 0
scoreboard players set minutes Timer 30
scoreboard players set hours Timer 1

scoreboard players set @a Deaths 0
scoreboard players set @a Molehunt 0

gamemode survival @a

scoreboard objectives add Molehunt trigger
scoreboard players set start Molehunt 0

scoreboard objectives add MainSettingsDisplay trigger
scoreboard objectives add TimeSettingsDisplay trigger
scoreboard objectives add BorderSettingsDisplay trigger

scoreboard objectives add Border trigger
scoreboard players set width Border 1000

execute as @a run function molehunt:setting_options

scoreboard objectives add HourSettings trigger
scoreboard objectives add MinuteSettings trigger

scoreboard objectives add MoleFrequency trigger
scoreboard players set 1in MoleFrequency 5

execute if score hours Timer matches 10.. run scoreboard players reset hours2 Timer
execute if score minutes Timer matches 10.. run scoreboard players reset minutes2 Timer
execute if score seconds Timer matches 10.. run scoreboard players reset seconds2 Timer
execute unless score hours Timer matches 10.. run scoreboard players set hours2 Timer 0
execute unless score minutes Timer matches 10.. run scoreboard players set minutes2 Timer 0
execute unless score seconds Timer matches 10.. run scoreboard players set seconds2 Timer 0

scoreboard players set @a TimeSettingsDisplay 0

scoreboard objectives remove Restart
