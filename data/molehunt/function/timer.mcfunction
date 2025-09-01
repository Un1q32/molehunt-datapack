execute as @a[scores={Deaths=1}] run team join spec @s
execute as @a[tag=!mole,tag=!inno] run team join spec @s
gamemode spectator @a[team=spec]
tag @a[team=spec] remove inno
tag @a[team=spec] remove mole
execute store result score Moles Alive run tag @a[tag=mole] list
execute store result score Innocents Alive run tag @a[tag=inno] list

scoreboard players add ticks Timer 1

execute if score ticks Timer matches 20 run scoreboard players remove seconds Timer 1
execute if score ticks Timer matches 20 run scoreboard players set ticks Timer 0

execute if score seconds Timer matches ..-1 if score minutes Timer matches 1.. run function molehunt:minute_update
execute if score seconds Timer matches ..-1 if score hours Timer matches 1.. run function molehunt:minute_update
execute if score minutes Timer matches ..-1 if score hours Timer matches 1.. run function molehunt:hour_update

execute if score hours Timer matches 10.. run scoreboard players reset hours2 Timer
execute if score minutes Timer matches 10.. run scoreboard players reset minutes2 Timer
execute if score seconds Timer matches 10.. run scoreboard players reset seconds2 Timer
execute unless score hours Timer matches 10.. run scoreboard players set hours2 Timer 0
execute unless score minutes Timer matches 10.. run scoreboard players set minutes2 Timer 0
execute unless score seconds Timer matches 10.. run scoreboard players set seconds2 Timer 0

title @a[tag=mole] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"red"},{"score":{"name":"hours","objective":"Timer"},"color":"red"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"red"},{"score":{"name":"minutes","objective":"Timer"},"color":"red"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"red"},{"score":{"name":"seconds","objective":"Timer"},"color":"red"}]

title @a[tag=inno] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"green"},{"score":{"name":"hours","objective":"Timer"},"color":"green"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"green"},{"score":{"name":"minutes","objective":"Timer"},"color":"green"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"green"},{"score":{"name":"seconds","objective":"Timer"},"color":"green"}]

title @a[team=spec] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"gray"},{"score":{"name":"hours","objective":"Timer"},"color":"gray"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"gray"},{"score":{"name":"minutes","objective":"Timer"},"color":"gray"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"gray"},{"score":{"name":"seconds","objective":"Timer"},"color":"gray"}]

execute if score seconds Timer matches ..0 if score minutes Timer matches ..0 if score hours Timer matches ..0 run function molehunt:open_portal

execute if entity @a[advancements={minecraft:end/kill_dragon=true}] run molehunt:end

execute if score Innocents Alive matches 0 run function molehunt:end
