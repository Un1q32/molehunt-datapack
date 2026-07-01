team add Survivor
team modify Survivor seeFriendlyInvisibles false
team modify Survivor deathMessageVisibility hideForOwnTeam
team modify Survivor nametagVisibility never

team add Mole
team modify Mole seeFriendlyInvisibles false
team modify Mole deathMessageVisibility hideForOtherTeams
team modify Mole nametagVisibility never

# Tags
tag @a remove Mole
tag @a remove Dead
tag @a remove Survivor

# Main scoreboard
scoreboard objectives add Molehunt trigger

# Molehunt Gamemode
# 0 - Nothing
# 1 - Normal
# 2 - Speedrun
# 3 - Infection
scoreboard players enable @a Molehunt
scoreboard players set mode Molehunt 0

# Amount of moles
scoreboard players set moles Molehunt 1

# game state
scoreboard players set playing Molehunt 0

# PlayerList
scoreboard objectives add PlayerList trigger

# DeathCount
scoreboard objectives add Deaths deathCount
scoreboard players reset @a Deaths

# Timer
# [1:30] default
scoreboard objectives add Timer dummy
scoreboard players set ticks Timer 0
scoreboard players set seconds Timer 0
scoreboard players set minutes Timer 30
scoreboard players set hours Timer 1

# other setup
gamerule advance_time false
weather clear
gamerule pvp false
gamerule spectators_generate_chunks true
gamerule spawn_phantoms false
gamerule allow_entering_nether_using_portals true
gamerule send_command_feedback true
team leave @a
gamemode creative @a[gamemode=spectator]
execute as @a run attribute @s minecraft:waypoint_receive_range base reset
execute as @a run attribute @s minecraft:waypoint_transmit_range base reset

# infection setup
scoreboard objectives add respawn.x dummy
scoreboard objectives add respawn.y dummy
scoreboard objectives add respawn.z dummy
scoreboard objectives add respawn.rot_y dummy
scoreboard objectives add respawn.rot_x dummy
scoreboard objectives add respawn.timestamp dummy
scoreboard objectives add infectionCount dummy
tag @a remove Converting
execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:block_interaction_range base reset
execute as @a run attribute @s minecraft:entity_interaction_range base reset
execute as @a run attribute @s minecraft:water_movement_efficiency base reset
execute as @a run attribute @s minecraft:knockback_resistance base reset
advancement revoke @s only molehunt:death
scoreboard players reset * infectionCount

# Clearing scheduled functions (sometime's these would activate on reload?????)
schedule clear molehunt:setup/teleportPlayers
schedule clear molehunt:setup/buildup
schedule clear molehunt:setup/announcerole
schedule clear molehunt:setup/endgrace
schedule clear molehunt:end

# keep track of stats (for fun)
scoreboard objectives add Kills playerKillCount

time of minecraft:overworld set 0
worldborder set 20

tellraw @a {"text": "Molehunt", "color": "#7f93b9"}

tellraw @a ["\n",{"text":"What gamemode?","color":"white"},{"text":"\n"},{"text":"[Normal]","color":"gold","click_event":{"action":"run_command","command":"/function molehunt:setup/normal/normalsetup"}},{"text":"   "},{"text":"[Speedrun]","color":"blue","click_event":{"action":"run_command","command":"/function molehunt:setup/speedrun/speedrunsetup"}},{"text":"   "},{"text":"[Infection]","color":"green","click_event":{"action":"run_command","command":"/function molehunt:setup/infection/infectionsetup"}}]
