scoreboard players add ticks Timer 1

execute if score ticks Timer matches 20 run scoreboard players remove seconds Timer 1
execute if score ticks Timer matches 20 run scoreboard players set ticks Timer 0

execute if score seconds Timer matches ..-1 if score minutes Timer matches 1.. run function molehunt:timer/minute_update
execute if score seconds Timer matches ..-1 if score hours Timer matches 1.. run function molehunt:timer/minute_update
execute if score minutes Timer matches ..-1 if score hours Timer matches 1.. run function molehunt:timer/hour_update

execute if score hours Timer matches 10.. run scoreboard players reset hours2 Timer
execute if score minutes Timer matches 10.. run scoreboard players reset minutes2 Timer
execute if score seconds Timer matches 10.. run scoreboard players reset seconds2 Timer
execute unless score hours Timer matches 10.. run scoreboard players set hours2 Timer 0
execute unless score minutes Timer matches 10.. run scoreboard players set minutes2 Timer 0
execute unless score seconds Timer matches 10.. run scoreboard players set seconds2 Timer 0

title @a[tag=Mole] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"red"},{"score":{"name":"hours","objective":"Timer"},"color":"red"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"red"},{"score":{"name":"minutes","objective":"Timer"},"color":"red"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"red"},{"score":{"name":"seconds","objective":"Timer"},"color":"red"}]

title @a[tag=Survivor] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"green"},{"score":{"name":"hours","objective":"Timer"},"color":"green"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"green"},{"score":{"name":"minutes","objective":"Timer"},"color":"green"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"green"},{"score":{"name":"seconds","objective":"Timer"},"color":"green"}]

title @a[team=] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"gray"},{"score":{"name":"hours","objective":"Timer"},"color":"gray"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"gray"},{"score":{"name":"minutes","objective":"Timer"},"color":"gray"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"gray"},{"score":{"name":"seconds","objective":"Timer"},"color":"gray"}]
