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

title @a[team=Survivor] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"green"},{"score":{"name":"hours","objective":"Timer"},"color":"green"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"green"},{"score":{"name":"minutes","objective":"Timer"},"color":"green"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"green"},{"score":{"name":"seconds","objective":"Timer"},"color":"green"}]

title @a[team=] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"gray"},{"score":{"name":"hours","objective":"Timer"},"color":"gray"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"gray"},{"score":{"name":"minutes","objective":"Timer"},"color":"gray"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"gray"},{"score":{"name":"seconds","objective":"Timer"},"color":"gray"}]

# PlayerList commands
execute run scoreboard players enable @a[team=Mole] PlayerList

# /trigger PlayerList (Only for moles)
execute as @a[tag=Mole,scores={PlayerList=1..}] run function molehunt:playerlist

# if any players join while the game is going. Put them in spectator.
execute as @a[tag=,gamemode=!spectator] run gamemode spectator @s
execute as @a[tag=,gamemode=spectator] run tag @s add Dead

# Manages player deaths (doing this cause i want the ability for ops to get out of spectator without reviving)
execute if score mode Molehunt matches 1..2 as @a[scores={Deaths=1..},gamemode=!spectator,tag=!Dead] run gamemode spectator
execute as @a[scores={Deaths=1..},gamemode=spectator] run tag @s add Dead

# End game when timer reaches 0 (normal and infection)
execute unless score mode Molehunt matches 2 if score seconds Timer matches ..0 if score minutes Timer matches ..0 if score hours Timer matches ..0 run function molehunt:end

# End game when someone kills the Ender Dragon (speedrun)
execute if score mode Molehunt matches 2 if entity @a[advancements={minecraft:end/kill_dragon=true}] run function molehunt:end

# Speedrun (portal opens)
execute if score mode Molehunt matches 2 if score seconds Timer matches ..0 if score minutes Timer matches ..0 if score hours Timer matches ..0 at @e[type=marker,tag=Portal] if block ~ ~ ~ bedrock run setblock ~ ~ ~ minecraft:end_portal_frame

# When game ends (scheduled so that it keeps restarting a 10 second timer. When there are no suvivors for more than 10 seconds game ends)
execute unless score survivorsLeft Molehunt matches 0 run schedule function molehunt:end 10s

# Ban stregnth
effect clear @a minecraft:strength

# Wolves don't attack people on the same team, so they would only attack moles if you were a survivor
kill @e[type=wolf]
