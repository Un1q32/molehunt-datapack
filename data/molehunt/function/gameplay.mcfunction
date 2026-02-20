# PlayerList commands
execute run scoreboard players enable @a[tag=Mole] PlayerList

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

# Infection converting timer
execute if score mode Molehunt matches 3 run function molehunt:infection/convertingtimer

# When game ends (scheduled so that it keeps restarting a 10 second timer. When there are no suvivors for more than 10 seconds game ends)
execute unless score survivorsLeft Molehunt matches 0 if score playing Molehunt matches 1 run schedule function molehunt:end 10s

# Ban stregnth
execute if entity @a[nbt={active_effects:[{id:"minecraft:strength"}]}] run effect clear @a minecraft:strength

# Wolves don't attack people on the same team, so they would only attack moles if you were a survivor
execute if entity @e[type=wolf] run kill @e[type=wolf]
