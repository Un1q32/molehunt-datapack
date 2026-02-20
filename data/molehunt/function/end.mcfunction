execute if score survivorsLeft Molehunt matches 1.. run title @a title {"text":"Survivors Win!","color":"green"}
execute if score survivorsLeft Molehunt matches 0 run title @a title {"text":"Moles Win!","color":"red"}

execute as @a[tag=mole] run tellraw @a [{selector:"@s",color:"red"},{text:" was a mole."}]

tag @a remove Mole
tag @a remove Dead
tag @a remove Survivor

team leave @a

gamemode survival @a

gamerule show_advancement_messages true
gamerule send_command_feedback true

scoreboard players set playing Molehunt 0

# Clearing scheduled functions
schedule clear molehunt:setup/teleportPlayers
schedule clear molehunt:setup/buildup
schedule clear molehunt:setup/announcerole
schedule clear molehunt:setup/endgrace
schedule clear molehunt:end

# Infection
execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:block_interaction_range base reset
execute as @a run attribute @s minecraft:entity_interaction_range base reset
execute as @a run attribute @s minecraft:water_movement_efficiency base reset
execute as @a run attribute @s minecraft:knockback_resistance base reset
