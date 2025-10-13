team add alive
team add spec

team modify spec color gray

scoreboard objectives add Deaths deathCount

scoreboard objectives add Alive dummy

team leave @a

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

scoreboard objectives add MoleCount dummy
scoreboard players set count MoleCount 1

scoreboard players enable @a MoleCount
scoreboard players enable @a Molehunt

execute as @a run function molehunt:start_button

scoreboard objectives add HourSettings trigger
scoreboard objectives add MinuteSettings trigger

execute if score hours Timer matches 10.. run scoreboard players reset hours2 Timer
execute if score minutes Timer matches 10.. run scoreboard players reset minutes2 Timer
execute if score seconds Timer matches 10.. run scoreboard players reset seconds2 Timer
execute unless score hours Timer matches 10.. run scoreboard players set hours2 Timer 0
execute unless score minutes Timer matches 10.. run scoreboard players set minutes2 Timer 0
execute unless score seconds Timer matches 10.. run scoreboard players set seconds2 Timer 0

tag @a remove converting
execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:block_interaction_range base reset
execute as @a run attribute @s minecraft:entity_interaction_range base reset
execute as @a run attribute @s minecraft:water_movement_efficiency base reset
execute as @a run attribute @s minecraft:knockback_resistance base reset
